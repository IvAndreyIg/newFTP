import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.HashMap;

class Core extends Thread
{
	static boolean loaded = false;
	static VirtualClient vc;
    static ExtendedFileList FileList = new ExtendedFileList();
    static ExtendedFileList ReloadableFileList = new ExtendedFileList();
    
	LinkingSystem ls = null;
	
    Socket ClientSoc;
    ServerSocket dsoc;

//    DataInputStream din;
//    DataOutputStream dout;

	ObjectOutputStream dout;
	ObjectInputStream din;
    
    int TransferMode = 0;
    
    String path = "files/";
	ArrayList<String> Users;
	private DBConnector connector;

	/**
	 *
	 *
	 *
	 *
	 * @param soc
	 * @param connector
	 */
	Core(Socket soc, DBConnector connector){

		try {
			this.connector = connector;
			ls = new LinkingSystem(this.connector);

    		ClientSoc=soc;
			System.out.println("localadreess:"+soc.getLocalAddress().getHostAddress());
//            din=new DataInputStream(ClientSoc.getInputStream());
//            dout=new DataOutputStream(ClientSoc.getOutputStream());

			dout = new ObjectOutputStream(ClientSoc.getOutputStream());

			din = new ObjectInputStream(ClientSoc.getInputStream());

            Debug.main("FTP Клиент подключился ...");
            reply(Constants.WELCOME_CODE, "Welcome to Avalon");
            /*необходимо добавить инициализацию кластеров
			и их памяти как в методе  CommandLIST(String command)*/
			InitFilesLists();
            start();
        } catch(Exception ex){};        
    }

	void SendFile(String filePath, String fileName) throws Exception {


    	File l_file = new File(path + fileName);
    	if (!l_file.exists()){
			System.out.println("File on cluster");
    		//Скачиваем с кластера
    		for (int i=0; i<ReloadableFileList.length(); i++){
    			String[] file = ReloadableFileList.get(i);
    			
    			if (file[0].contains(fileName)){
    				Debug.dev("Файл нашелся на адресе " + file[1]);
    				reply(Constants.FILE_STATUS_OK_OPEN_TRANSFER_SEND,"Open ASCII mode data connection.",filePath);
    				ls.GetRemoteFileFromClusters(fileName, file[1]);
    				reply(Constants.TRANSFER_COMPLETE_CLOSE_TRANSFER, "Transfer complete.");
    			}		
    		} 
    	} else {
			System.out.println("File on server");
    		//Скачиваем с текущего сервера
            reply(Constants.FILE_STATUS_OK_OPEN_TRANSFER_SEND,"Open ASCII mode data connection. filename:"+fileName,filePath);

    		TransferStream ts = new TransferStream(5218);
    		
    		FileInputStream fin=new FileInputStream(l_file);

            byte[] buffer = new byte[1024];
            int count;
            while((count=fin.read(buffer)) > 0){
            	//(data,start,len)
            	ts.out.write(buffer, 0, count);
            }
            fin.close();      		

            reply(Constants.TRANSFER_COMPLETE_CLOSE_TRANSFER, "Transfer complete."); 	
            
            ts.close();
            dsoc.close();   		
    	}
    }
    void ReceiveFile(String filePath, String fileName) throws Exception
    {


    	//soc.getLocalAddress().getHostAddress()
    	
        reply(Constants.FILE_STATUS_OK_OPEN_TRANSFER_RECEIVE,"Open ASCII mode data connection.",filePath);

        int ret = ls.StoreFileOnCluster(fileName);
        if (ret == -1){
			//System.out.println("send on server");
        	Debug.log("Кластеры не подключены, закачивается на управляющий сервер.");
        	TransferStream ts = new TransferStream(5218);
			//dout.writeBytes(filename+":"+VirtualClientList.get(c).vc_address+":"+VirtualClientList.get(c).vc_port);
        	File f = new File(path + fileName);
        	FileOutputStream fout=new FileOutputStream(f);

            byte[] buffer = new byte[1024];
            int count;
            
            while((count = ts.in.read(buffer)) >= 0){
            	fout.write(buffer,0,count);
            }
            reply(Constants.TRANSFER_COMPLETE_CLOSE_TRANSFER, "Transfer complete."); 
            fout.close();      		  
            ts.close();
            dsoc.close();             
        }
        reply(Constants.TRANSFER_COMPLETE_CLOSE_TRANSFER, "Transfer complete."); 	
        
    }



	/* Command<TYPE> listing */
	@SuppressWarnings("deprecation")
	private void CommandDELE(String filename) throws IOException {

		System.out.println("filename"+filename);
		//
		File f = new File(path + filename);
		if (!f.exists()){
    		for (int i=0; i<ReloadableFileList.length(); i++){
    			String[] file = ReloadableFileList.get(i);
    			
    			if (file[0].indexOf(filename)!=-1){
    				Debug.dev("Файл нашелся на адресе " + file[1]);
    				ls.DeleteRemoteFileFromClusters(filename, file[1]);
    			}		
    		}
			reply(Constants.SUCCESSFUL_REQUEST,"File deleted successful");
		} else {
			FileList.delete(filename);
			if(!f.delete()) Debug.log(" Error: Delete failed");
			reply(Constants.SUCCESSFUL_REQUEST,"File deleted successful");
		}
	}

	/**
	 * инициализуем списки с файлами
	 * если этого не сделать, то не будет видно какие файлы
	 * есть на сервере и кластерах при использование
	 * комманд GET,DELETE и т.д.
	 *
	 */
	private void InitFilesLists(){

		//очищаем список файлов с кластоеров
		ReloadableFileList.clear();
		//подгружаем список локальных файлов на главном сервере
		LoadLocalFiles();
		//подгружаем список файлов с кластеров
		ReloadableFileList = ls.GetRemoteListFromClusters();
	}


	private void CommandLIST(String filePath, String fileName,String text) throws IOException {

	InitFilesLists();


	if (text.equals("refresh"))
		reply(Constants.LIST_STATUS_OK_OPEN_TRANSFER_SEND,"Open ASCII mode data connection.",filePath);
	else
	reply(Constants.FILE_STATUS_OK_OPEN_TRANSFER_SEND,"Open ASCII mode data connection.",filePath);

	TransferStream ts = new TransferStream(5218);

	for (int i = 0; i < FileList.length(); i++){
		String file = FileInfo(FileList.get(i)[0]);
		this.ReloadableFileList.add(file, "localhost:" + ClientSoc.getLocalPort());
	}
	Debug.log("Итоговый список файлов:");
	for (int i=0; i<ReloadableFileList.length(); i++){
		String file = ReloadableFileList.get(i)[0];
		System.out.print("[FILE] " + file);
		ts.out.write(file.getBytes(), 0, file.length());
	}
	ts.close();
	ls.MathTable();
	reply(226, "Transfer complete.");

	}


	private void CommandSEND(String path, String name) throws Exception {
		System.out.println("\tSEND Command Receiced ...");
		ReceiveFile(path,name);

	}

	private void CommandGET(String path, String name) throws Exception {
		System.out.println("\tGET Command Received ...");
		SendFile(path,name);
	}

	private void CommandCLOSE(String command) {
		System.out.println("\tDisconnect Command Received ...");
		System.exit(1);
	}

	//что вообще должна делать эта команда ?
	private void CommandFEAT(String command) throws IOException {
		System.out.println("\tFEAT Command Received ...");
//		dout.writeBytes("211-Features: \n");
//		dout.writeBytes("EPRT \n");
//		dout.writeBytes("EPSV \n");
//		dout.writeBytes("MDTM \n");
//		dout.writeBytes("PASV \n");
//		dout.writeBytes("REST STREAM \n");
//		dout.writeBytes("SIZE \n");
//		dout.writeBytes("TVFS \n");
//		dout.writeBytes("UTF8 \n");
//		dout.writeBytes("211 End \n");
	}

	/////команды, выполняющие функции других команд, может фунционал должен быть расширен
//	private void CommandRETR(String command) throws Exception {
//		System.out.println("\tRETR Command Received ...");
//		SendFile(command);
//	}
//
//	private void CommandSTOR(String command) throws Exception {
//		System.out.println("\tSTOR Command Received ...");
//		ReceiveFile(command);
//	}
	/////

	/////не работающие команды
//	private void CommandUSER(String command) throws IOException {
//		System.out.println("\tUSER Command Received ...");
//		InitLogin(command);
//	}
//	private void CommandQUIT(String command) {
//		System.out.println("\tDisconnect Command Received ...");
//		System.exit(1);
//	}
//	private void CommandPWD(String command) throws IOException {
//        System.out.println("\tPWD Command Received ...");
//        reply(Constants.SUCCESSFUL_REQUEST,"\"/\" is current directory.");
//	}
//	private void CommandCWD(String command) throws IOException {
//		System.out.println("\tCWD Command Received ...");
//        reply(Constants.PATH_CREATE,"\"/\" is current directory.");
//	}
//	private void CommandSYST(String command) throws IOException {
//	System.out.println("\tSYST Command Received ...");
//	reply(Constants.SYSTEM_TYPE,"Windows");
//}
//	private void CommandEPSV(String command) throws IOException {
//		System.out.println("\tEPSV Command Received ...");
//		reply(Constants.EXTENDED_PASSIVE_MODE,"Entering Extended Passive Mode (|||5218|)");
//	}
	/////


	/* Command<TYPE> listing END*/


    int reply(int code, String text) throws IOException{



		//Создаем тело сообщения
		HashMap<String, Object> newMessage = new HashMap<>();
		//Устанавливаем код
		newMessage.put("code",code);
		//Устанавливаем текст
		newMessage.put("text",text);
		//Устанавливаем пусть
		newMessage.put("path","");
		//Отправляем сообщение серверу
		 dout.writeObject(newMessage);


    //	dout.writeBytes(code + " " + text + "\n");
    	return code;
	}
	int reply(int code, String text,String path) throws IOException{

		//Создаем тело сообщения
		HashMap<String, Object> newMessage = new HashMap<>();
		//Устанавливаем код
		newMessage.put("code",String.valueOf(code));
		//Устанавливаем текст
		newMessage.put("text",text);
		//Устанавливаем пусть
		newMessage.put("path",path);
		//Отправляем сообщение серверу
		try { dout.writeObject(newMessage);
		} catch (IOException e) { e.printStackTrace();
		}
		return code;
	}
    String fastSplit(String command){
    	String[] arg = command.split(" ");
    	return arg[1];
    }
   synchronized void  LoadLocalFiles(){
    	// эту строчку написала тварина
    //	if (!loaded){
	        File dir = new File(path);
	        String fileNames[] = dir.list();

	   		FileList = new ExtendedFileList();

	        for (int i = 0; i<fileNames.length;i++){
	        	FileList.add(fileNames[i], "localhost");
	        }
	        loaded = true;
    //	}
    }


	private String FileInfo(String filename){
		String date,time;
		try{
			File file = new File(path + filename);
			Path path = file.toPath();
			BasicFileAttributes attr = Files.readAttributes(path, BasicFileAttributes.class);

			String[] buffer = attr.lastAccessTime().toString().split("T");//Должно быть решение лучше этих 3х строчек.
			date = buffer[0];
			time = buffer[1].substring(0, 8);
			
			if (attr.isDirectory()){
				return date + " " + time + " " + attr.size() + " <DIR> " + filename  + "\n";
			} else {
				return date + " " + time + " " + attr.size() + " " + filename  + "\n";
			}
		} catch(Exception ex){
			System.out.println(ex);
			return  "error";
		}  
	}





	//////////////////////


    private void LoadUserList() {
    	Debug.method("LoadUserList");
    	Users = new ArrayList<String>();
		File file = new File( "users.txt" );
		try {
			if(!file.exists()) {
				file.createNewFile();
				FileOutputStream fout=new FileOutputStream(file); 	
				fout.write(("admin pass" + "\r\n").getBytes());
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
    	try {
	        BufferedReader br = new BufferedReader (
	            new InputStreamReader(
	                new FileInputStream( file ), "UTF-8"
	            )
	        );
	        String line = null;
	        while ((line = br.readLine()) != null) {
	        	Users.add(line);
	        	//Debug.log("Пользователь " + line);
	        }
	        br.close();
		} catch(Exception ex){ ex.printStackTrace();}  
	}

	public void run()
	{
		int errors =0;

		while(true){

			try {
				//принимаем команду

				HashMap<String, Object> receivedMessage;
				String command="";
				String filePath="";
				String fileName="";
				String text="";
				try {
					//считываем полученную команду
					receivedMessage=(HashMap<String, Object>)din.readObject();
					command=receivedMessage.get("command").toString();
					filePath=receivedMessage.get("path").toString();
					fileName=receivedMessage.get("name").toString();
					fileName=receivedMessage.get("name").toString();
					text=receivedMessage.get("text").toString();


				} catch (IOException | ClassNotFoundException e) {
					e.printStackTrace();
				}

				//String command=din.readLine();

				if (command != null) Debug.cmd("Команда: " + command);

				//assert command != null;
				/*необходимо изменить следущее "дерево" условных операторов,
				 убрать if и заменить на switch,
				 также добавить проверку авторизации из метода InitLogin(String command) */

				if(command.contains("GET"))
				{
					CommandGET(filePath,fileName);
					continue;
				}
				else if(command.contains("LIST"))
				{
					CommandLIST(filePath,fileName,text);
					continue;
				}
				else if(command.contains("SEND"))
				{
					CommandSEND(filePath,fileName);
					continue;
				}
				else if(command.contains("DELETE"))
				{
					CommandDELE(fileName);
					continue;
				}
//				else if(command.compareTo("CLOSE")==0){
//					CommandCLOSE(command);
//				}
				/*else if(command.contains("RETR"))
				{
					CommandRETR(command);
					continue;
				}*/

				/*else if(command.contains("CWD"))
				{
					CommandCWD(command);
					continue;
				}*/
				/*else if(command.contains("PWD"))
				{
					CommandPWD(command);
					continue;
				}*/
				/*else if(command.contains("TYPE"))
				{
					CommandTYPE(command);
					continue;
				}*/
				/*else if(command.contains("EPSV"))
				{
					CommandEPSV(command);
					continue;
				}*/
				/*else if(command.contains("USER"))
				{
					CommandUSER(command);
					continue;
				}*/

				/*else if(command.contains("SYST"))
				{
					CommandSYST(command);
					continue;
				}*/


				/*else if(command.contains("STOR"))
				{
					CommandSTOR(command);
					continue;
				}*/

				/*else if(command.compareTo("QUIT")==0){
					CommandQUIT(command);
				}*/
				 else {
					reply(Constants.COMMAND_NOT_SUPPORT,"command not suppot");
				}
				sleep(50);
			}
			catch(Exception ex){
				System.out.println(ex);
				try {
					sleep(30);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				errors++;
				if(errors>2)
					break;
				//System.out.println("Checking stop ::");
			}
		}

	}


	//модуль не работает,необходимо доделать
	@SuppressWarnings("deprecation")
	void InitLogin(String command) throws IOException{
		LoadUserList();
		boolean auth = false;
		try{
			String username = fastSplit(command);
			this.reply(Constants.USERNAME_CORRECT, "Username correct");

			command=din.readLine();
			String password = fastSplit(command);

			for (int i=0;i<this.Users.size(); i++){
				if(this.Users.get(i).compareToIgnoreCase(username + " " + password) == 0){
					this.reply(Constants.LOGIN_CORRECT, "Login correct");
					Debug.log("Пользователь "  + username + " авторизован.");
					auth = true;
					break;
				}
			}
			if (!auth) this.reply(Constants.LOGIN_INCORRECT, "Login incorrect");
		}
		catch(Exception ex){};
	}
	//модуль не работает,необходимо доделать
	private void CommandTYPE(String command) throws IOException {
//		String arg = fastSplit(command);
//		System.out.println("\tTYPE "+ arg + " Command Received ...");

//		if (arg.equals("A")){
//			SetTransferMode("ASCII");
//			reply(Constants.COMMAND_CORRECT,"Switching to A - ASCII text.");
//		}
//		else if (arg.equals("E")){
//			SetTransferMode("EBCDIC");
//			reply(Constants.COMMAND_CORRECT,"Switching to E - EBCDIC text.");
//		}
//		else if (arg.equals("I")){
//			SetTransferMode("BINARY");
//			reply(Constants.COMMAND_CORRECT,"Switching to I - image (binary data).");
//		}
//		else if (arg.equals("L")){
//			SetTransferMode("LOCAL");
//			reply(Constants.COMMAND_CORRECT,"Switching to L - local format.");
//		}
	}
	//модуль необходимо переработать
	private void SetTransferMode(String string) {

	}


}
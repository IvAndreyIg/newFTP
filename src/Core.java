import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;

class Core extends Thread
{
	static boolean loaded = false;
	static VirtualClient vc;
    static ExtendedFileList FileList = new ExtendedFileList();
    static ExtendedFileList ReloadableFileList = new ExtendedFileList();
    
	LinkingSystem ls = new LinkingSystem();
	
    Socket ClientSoc;
    ServerSocket dsoc;

    DataInputStream din;
    DataOutputStream dout;
    
    int TransferMode = 0;
    
    String path = "files/";
	ArrayList<String> Users;
    
    Core(Socket soc){	
    	try {
    		ClientSoc=soc;                        
            din=new DataInputStream(ClientSoc.getInputStream());
            dout=new DataOutputStream(ClientSoc.getOutputStream());
            Debug.main("FTP Клиент подключился ...");
            reply(Constants.WELCOME_CODE, "Welcome to Avalon");
            start();
        } catch(Exception ex){};        
    }
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
	void SendFile(String command) throws Exception {

    	String filename = fastSplit(command); 
    	
    	File l_file = new File(path + filename);
    	if (!l_file.exists()){
			System.out.println("File on cluster");
    		//Скачиваем с кластера
    		for (int i=0; i<ReloadableFileList.length(); i++){
    			String[] file = ReloadableFileList.get(i);
    			
    			if (file[0].indexOf(filename)!=-1){
    				Debug.dev("Файл нашелся на адресе " + file[1]);
    				reply(Constants.FILE_STATUS_OK_OPEN_TRANSFER,"Open ASCII mode data connection.");
    				ls.GetRemoteFileFromClusters(filename, file[1]);
    				reply(Constants.TRANSFER_COMPLETE_CLOSE_TRANSFER, "Transfer complete.");
    			}		
    		} 
    	} else {
			System.out.println("File on server");
    		//Скачиваем с текущего сервера
            reply(Constants.FILE_STATUS_OK_OPEN_TRANSFER,"Open ASCII mode data connection. filename:"+filename);
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
    void ReceiveFile(String command) throws Exception
    {
    	String filename = fastSplit(command);
    	
        reply(Constants.FILE_STATUS_OK_OPEN_TRANSFER,"Open ASCII mode data connection.");
        int ret = ls.StoreFileOnCluster(filename);
        if (2 == -1){
        	Debug.log("Кластеры не подключены, закачивается на управляющий сервер.");
        	TransferStream ts = new TransferStream(5218);  
    		
        	File f = new File(path + filename);
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

    //@SuppressWarnings("deprecation")
	public void run()
    {
		System.out.println("Checking start ::");
        while(true){

            try {
				System.out.println("Checking");
	            String Command=din.readLine();
				System.out.println("command ::"+Command);
	            if (Command != null) Debug.cmd("Команда: " + Command);

				//assert Command != null;
				if(Command.contains("GET"))
	            {
	            	CommandGET(Command);
	                continue;
	            }
	            else if(Command.contains("RETR"))
	            {
	                CommandRETR(Command);
	                continue;
	            } 
	            else if(Command.contains("CWD"))
	            {
	                CommandCWD(Command);
	                continue;
	            } 
	            else if(Command.contains("PWD"))
	            {
	            	CommandPWD(Command);
	                continue;
	            }   
	            else if(Command.contains("TYPE"))
	            {
	            	CommandTYPE(Command);
	                continue;
	            }     
	            else if(Command.compareTo("EPSV")==0)
	            {
	            	CommandEPSV(Command);
	                continue;
	            }  
	            else if(Command.contains("USER"))
	            {
	            	CommandUSER(Command);
	                continue;
	            }     
	            else if(Command.contains("LIST"))
	            {
	            	CommandLIST(Command);
	            	continue;
	            }  
	            else if(Command.contains("SYST"))
	            {
	            	CommandSYST(Command);
	                continue;
	            }      
	            else if(Command.contains("FEAT"))
	            {
	            	CommandFEAT(Command);
	                continue;
	            }             
	            else if(Command.compareTo("SEND")==0)
	            {
	            	CommandSEND(Command);
	                continue;
	            }      
	            else if(Command.contains("STOR"))
	            {
	            	CommandSTOR(Command);
	                continue;
	            }       
	            else if(Command.contains("DELE"))
	            {
	            	CommandDELE(Command);
	                continue;
	            } 
	            else if(Command.compareTo("QUIT")==0){
	            	CommandQUIT(Command);
	            }
	            else if(Command.compareTo("CLOSE")==0){
	            	CommandCLOSE(Command);
	            } else {
	            	reply(Constants.COMMAND_NOT_SUPPORT,"Command not suppot");
	            }
	            sleep(1);
            }
            catch(Exception ex){
				System.out.println(ex);
				System.out.println("Checking stop ::");
            }
        }

    }
	/* Command<TYPE> listing */
	private void CommandDELE(String command) throws IOException {
		String filename = fastSplit(command);
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
    private void CommandSTOR(String command) throws Exception {
        System.out.println("\tSTOR Command Received ...");
        ReceiveFile(command);	
	}
	private void CommandRETR(String command) throws Exception {
        System.out.println("\tRETR Command Received ...");
        SendFile(command);	
	}
	private void CommandLIST(String command) throws IOException {
        System.out.println("\tLIST Command Received ...");
        ReloadableFileList.clear();
        LoadLocalFiles();

        ReloadableFileList = ls.GetRemoteListFromClusters();
        
        reply(Constants.FILE_STATUS_OK_OPEN_TRANSFER,"Open ASCII mode data connection.");

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
	private void CommandGET(String command) throws Exception {
        System.out.println("\tGET Command Received ...");
        SendFile(command);
    }
	private void CommandCLOSE(String command) {
        System.out.println("\tDisconnect Command Received ...");
        System.exit(1);	
	}
	private void CommandQUIT(String command) {
        System.out.println("\tDisconnect Command Received ...");
        System.exit(1);
	}
	private void CommandSEND(String command) throws Exception {
        System.out.println("\tSEND Command Receiced ...");                
        ReceiveFile(command);
	}
	private void CommandFEAT(String command) throws IOException {
        System.out.println("\tFEAT Command Received ...");
        dout.writeBytes("211-Features: \n");
        dout.writeBytes("EPRT \n");
        dout.writeBytes("EPSV \n");
        dout.writeBytes("MDTM \n");
        dout.writeBytes("PASV \n");
        dout.writeBytes("REST STREAM \n");
        dout.writeBytes("SIZE \n");
        dout.writeBytes("TVFS \n");
        dout.writeBytes("UTF8 \n");
        dout.writeBytes("211 End \n");
	}
	private void CommandSYST(String command) throws IOException {
        System.out.println("\tSYST Command Received ...");
        reply(Constants.SYSTEM_TYPE,"Windows");
	}
	private void CommandUSER(String command) throws IOException {
        System.out.println("\tUSER Command Received ...");
        InitLogin(command);
	}
	private void CommandEPSV(String command) throws IOException {
        System.out.println("\tEPSV Command Received ...");
        reply(Constants.EXTENDED_PASSIVE_MODE,"Entering Extended Passive Mode (|||5218|)");	 
	}
	private void CommandTYPE(String command) throws IOException {
		String arg = fastSplit(command);
		System.out.println("\tTYPE "+ arg + " Command Received ...");
		
		if (arg.equals("A")){
			SetTransferMode("ASCII");
			reply(Constants.COMMAND_CORRECT,"Switching to A - ASCII text.");
		}
		else if (arg.equals("E")){
			SetTransferMode("EBCDIC");
			reply(Constants.COMMAND_CORRECT,"Switching to E - EBCDIC text.");
		}
		else if (arg.equals("I")){
			SetTransferMode("BINARY");
			reply(Constants.COMMAND_CORRECT,"Switching to I - image (binary data).");
		}
		else if (arg.equals("L")){
			SetTransferMode("LOCAL");
			reply(Constants.COMMAND_CORRECT,"Switching to L - local format.");
		}
	}
	private void CommandPWD(String command) throws IOException {
        System.out.println("\tPWD Command Received ...");
        reply(Constants.SUCCESSFUL_REQUEST,"\"/\" is current directory.");
	}
	private void CommandCWD(String command) throws IOException {
		System.out.println("\tCWD Command Received ...");
        reply(Constants.PATH_CREATE,"\"/\" is current directory.");
	}
	/* Command<TYPE> listing END*/
	private void SetTransferMode(String string) {
		
	}

    int reply(int code, String text) throws IOException{
    	dout.writeBytes(code + " " + text + "\n");
    	return code;
	}
    String fastSplit(String command){
    	String[] arg = command.split(" ");
    	return arg[1];
    }
    void LoadLocalFiles(){
    	if (!loaded){
	        File dir = new File(path);
	        String fileNames[] = dir.list();
	        
	        for (int i = 0; i<fileNames.length;i++){
	        	FileList.add(fileNames[i], "localhost");
	        }
	        loaded = true;
    	}   	
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
			return  "04-04-03 10:30PM 1 " + filename + "\n";
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
}
import java.io.*;
import java.net.Socket;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;


public class ClusterCore extends Thread {
	
    DataInputStream din;
    DataOutputStream dout;
	private String fileEnd;

	private String fileDir="files/";

	ClusterCore(Socket soc, String fileEnd){
		this.fileEnd = fileEnd;

		fileDir="files"+fileEnd+"/";
		System.out.println("files:"+fileDir );
		try {
              Socket ClientSoc = soc;                        
              din=new DataInputStream(ClientSoc.getInputStream());
              dout=new DataOutputStream(ClientSoc.getOutputStream());
              Debug.log("Управляющий сервер подключился ...");
              CreateWorkDir();
              start();
        }
        catch(Exception ex){};        
    }
	public int reply(int code, String text) throws IOException{
    	dout.writeBytes(code + " " + text + "\n");
    	return code;
	}

    void SendFile(String command) throws Exception {      
    	String filename = Tools.fastSplit(command);
    	File file = new File(fileDir + filename);
    	
    	if (!file.exists()){
    		System.out.println("File no found!");
    		reply(Constants.FILE_NOT_FOUND,"File not found");
    	} else {
    		System.out.println("[LOG]" + "Кластер начинает передачу файла " + filename);
    		FileInputStream fin=new FileInputStream(file);

            byte[] buffer = new byte[1024];
            int count;
            
            while((count=fin.read(buffer)) > 0){
            	dout.write(buffer, 0, count);
            }
            dout.writeByte(-1);
    		dout.flush();
            fin.close();      		
    		System.out.println("[LOG]" + "Кластер закончил передачу файла " + filename);
    	}
    	
    }
    @SuppressWarnings("deprecation")
	public void run(){
        while(true){
			try {
				String Command = din.readLine();
		        if (Command != null) System.out.println("Команда: " + Command);   
		        
	            if(Command.compareTo("GET")==0)
	            {
	            	CommandGET(Command);
	                continue;
	            }     
	            else if(Command.contains("LIST"))
	            {
	            	CommandLIST(Command);
	            	continue;
	            }       
	            else if(Command.contains("SYNX"))
	            {
	            	CommandSYNX(Command);
	            	continue;
	            }       
	            else if(Command.contains("DELE"))
	            {
	            	CommandDELE(Command);
	                continue;
	            }       
	            else if(Command.contains("RETR"))
	            {
	            	CommandRETR(Command);
	            	continue;
	            }    
	            else if(Command.contains("STOR"))
	            {
	            	CommandSTOR(Command);
	            	continue;
	            } 
			} catch (IOException e) {
				//e.printStackTrace();
				Debug.log("Управляющей сервер отключен!");
				break;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	
        }
    }
	private void CommandDELE(String command) throws IOException {
		String filename = Tools.fastSplit(command);
		File f = new File(fileDir + filename);
		if(!f.delete()) Debug.log(" Error: Delete failed");
	} 
    private void CommandSYNX(String command) {
    	String[] arg = command.split(" ");
    	if (arg.length > 1){
	    	File file = new File( "clusters.txt");
			try {
		    	FileOutputStream fout=new FileOutputStream(file); 	
		    	for (int i=1;i<arg.length;i++){
		    		if (i == arg.length - 1){
		    			fout.write((arg[i]).getBytes());
		    		} else {
			    		fout.write((arg[i] + "\r\n").getBytes());
		    		}
		    	}
		    	fout.close();
			} catch(Exception ex){
				
			}	    	
    	}
	}
	@SuppressWarnings("resource")
	private void CommandSTOR(String command) throws IOException {
		// TODO Auto-generated method stub

    	String filename = Tools.fastSplit(command);
		
    	File f = new File(fileDir+ filename);
		FileOutputStream fout=new FileOutputStream(f);

        byte[] buffer = new byte[1024];
        int count;
        
        while((count = din.read(buffer)) >= 0){
        	fout.write(buffer,0,count);
        	if (count != 1024) break;
        }
	}
	private void CommandGET(String command) {
		
	}
	private void CommandRETR(String command) throws Exception {
        System.out.println("\tRETR Command Received ...");
        SendFile(command);	
	}
	private void CommandLIST(String command) throws IOException {
		Debug.method("\tLIST Command Received ...");

		String list[] = new File(fileDir).list();
		for (int i = 0; i < list.length; i++){
			String file = FileInfo(list[i]);
			System.out.print("[FILE] " + file);
			dout.writeBytes(file);
		}
		dout.flush();
        reply(226, "Transfer complete.");
        Debug.method("\tLIST complited ...");
    }
	private String FileInfo(String filename){
		String date,time;
		try{
			File file = new File(fileDir + filename);
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
    private void CreateWorkDir() {
    	File myPath = new File(fileDir);
    	myPath.mkdirs();
	}

}

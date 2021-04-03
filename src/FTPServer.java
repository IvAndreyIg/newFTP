import java.net.ServerSocket;

public class FTPServer
{
	static int port = 5217;
	
    public static void main(String args[]) throws Exception
    {	
    	if  (args.length == 0){
	        ServerSocket soc=new ServerSocket(port);
	        Debug.main("FTP Server запущен на порту " + port);
	        while(true)
	        {
	        	Debug.main("Ожидание подключения ...");
	            Core t=new Core(soc.accept());
	        }	
    	} else {
    		if (!args[0].equals("alt")){
    			
    		} else {
        		port = Integer.parseInt(args[1]);
    	        ServerSocket soc=new ServerSocket(port);
    	        Debug.log("Кластер активиирован на порту: " + port);
    	        while(true)
    	        {
    	        	Debug.log("Ожидание подключение контролирующего сервера ...");
    	            ClusterCore t=new ClusterCore(soc.accept());
    	        }   			
    		}
    	}
    }
}


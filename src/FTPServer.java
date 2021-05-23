import java.net.ServerSocket;
import java.util.Scanner;

public class FTPServer
{
	static int port = 5217;
	
    public static void main(String args[]) throws Exception
    {

		Scanner in = new Scanner(System.in);

			System.out.print("Input mode: ");
			String mode = in.nextLine();


//
			if(mode.split(" ")[0].equals("server")){

		//	int tempPort=Integer.parseInt(mode.split(" ")[1]);
			//if( instanceof Integer){}
	        ServerSocket soc=new ServerSocket(port);
	        Debug.main("FTP Server запущен на порту " + port);
	        while(true)
	        {
	        	Debug.main("Ожидание подключения ...");
	            Core t=new Core(soc.accept());
	        }	
    	} else if(mode.split(" ")[0].equals("cluster")){

        		port = Integer.parseInt(mode.split(" ")[1]);
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


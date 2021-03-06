import java.net.ServerSocket;
import java.util.Scanner;

public class FTPServer
{
	static int port;
	
    public static void main(String args[]) throws Exception
    {

		Scanner in = new Scanner(System.in);

			System.out.print("Input mode: ");
			// cluster 1000
			// server
			// server 5217
			// server 5218 mysql localhost:3306/Goose login1 password1
			String mode = in.nextLine();


		String[] lineArgs = Tools.splitArray(mode);

		DBConnector connector=null;
//

			if(lineArgs[0].equals("server")){

				port=5217;



				if (lineArgs.length>1){

					//выбор порта
					port= Integer.parseInt(lineArgs[1]);


				}
				//настройки получения данных о кластерах и клиентах
				if (lineArgs.length>5){

					String dbType=lineArgs[2];


					switch (dbType){

						case "mysql":{

							//connector=new mysqlDBConnector(lineArgs[3],lineArgs[4],lineArgs[5]);
							//connector.connect();


						}break;
						case "mongodb":{

							//connector=new mongodbDBConnector(lineArgs[3],lineArgs[4],lineArgs[5]);
							//connector.connect();


						}break;
						default:{

							connector=new LocalDBConnector();
							connector.connect();
						}

					}


				}else{

					connector=new LocalDBConnector();
					connector.connect();
				}




		//	int tempPort=Integer.parseInt(mode.split(" ")[1]);
			//if( instanceof Integer){}


				ServerSocket soc=new ServerSocket(port);
				Debug.main("FTP Server запущен на порту " + port);

				while(true)
				{
					Debug.main("Ожидание подключения ...");
					Core t=new Core(soc.accept(),connector);
				}

			} else if(lineArgs[0].equals("cluster")){


				String fileEnd="";

        		port = Integer.parseInt(lineArgs[1]);

        		if (lineArgs.length>2){

					fileEnd=lineArgs[2];
				}

    	        ServerSocket soc=new ServerSocket(port);
    	        Debug.log("Кластер активиирован на порту: " + port);
    	        while(true)
    	        {
    	        	Debug.log("Ожидание подключение контролирующего сервера ...");
    	            ClusterCore t=new ClusterCore(soc.accept(),fileEnd);
    	        }

    	}
    }
}


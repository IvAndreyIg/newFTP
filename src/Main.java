import java.net.ServerSocket;
import java.util.Scanner;

public class Main
{

	
    public static void main(String args[]) throws Exception
    {
		 int port=0;

		Scanner in = new Scanner(System.in);

			System.out.print("Input mode: ");
			// 0 режим 1порт  2порт передачи    3 тип БД     4 хост БД и именем бд 5 логин юзера 6 пароль
			// cluster 1000
			// cluster 1000
			// server
			// server 5217
			// server 5217 5218
			// server 5217 5218 mysql localhost:3306/localdb Andrey myPassword
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

					String dbType=lineArgs[3];


					switch (dbType){

						case "mysql":{
							System.out.println("mysql connect");

							connector=new mySQLConnector();

							String host= lineArgs[4];

							String login=lineArgs[5];

							String password="";

							if (lineArgs.length==7)
								 password=lineArgs[6];


							connector.connect(host,login,password);


						}break;
						case "mongodb":{

							//connector=new mongodbDBConnector();
							//connector.connect(lineArgs[3],lineArgs[4],lineSystem.out.println("local connect");

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


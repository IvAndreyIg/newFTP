import java.net.ServerSocket;

public class Cluster1000 {
    static int port = 1000;
    public static void main(String args[]) throws Exception
    {

                ServerSocket soc=new ServerSocket(port);
                Debug.log("Кластер активиирован на порту: " + port);
                while(true)
                {
                    Debug.log("Ожидание подключение контролирующего сервера ...");
                    ClusterCore t=new ClusterCore(soc.accept());
                }


    }
}

package ClientTestOnly;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Scanner;

public class Client implements Runnable {

    static int port = 5217;
    static int transferPort = 5217;

    Socket mainSocket;

    Socket transferSocket;

    DataInputStream din;
    DataOutputStream dout;

    String Filename;

    public Client(Socket socket) {
        this.mainSocket = socket;

        try {
            din=new DataInputStream(socket.getInputStream());
            dout=new DataOutputStream(socket.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    public static void main(String[] args)  {
        Socket socket = new Socket();
        try {
            socket.connect(new InetSocketAddress(port),2000);

            Client client = new Client(socket);



            new Thread(client).start();


            Scanner in = new Scanner(System.in);

            while(true){


                System.out.print("Input command: ");
                String command = in.nextLine();
                client.dout.writeBytes(command);
            }





        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    @Override
    public void run() {

        while(true){

            try {
                String Command=din.readLine();
                System.out.println("Command:"+Command);

                if(Command.contains("150"))
                {
                    System.out.println("transfer start:");

                    transferSocket=new Socket();
                    transferSocket.connect(new InetSocketAddress(transferPort),2000);

                    System.out.println("Send End");
                }

            } catch (IOException e) {
                e.printStackTrace();
            }


        }
    }
}

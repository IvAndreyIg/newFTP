package ClientTestOnly;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Scanner;

public class Client implements Runnable {

    static int port = 5217;

    Socket socket;

    DataInputStream din;
    DataOutputStream dout;

    public Client(Socket socket) {
        this.socket = socket;

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
        } catch (IOException e) {
                e.printStackTrace();
            }


        }
    }
}

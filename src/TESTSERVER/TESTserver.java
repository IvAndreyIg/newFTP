package TESTSERVER;

import java.io.*;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

public class TESTserver implements Runnable {

    static int port = 5217;
    static int transferPort = 5218;

    Socket mainSocket;

    Socket transferSocket;

    DataInputStream din;
    DataOutputStream dout;

    String Filename;

    public TESTserver(Socket socket) {
        this.mainSocket = socket;

        try {
            din=new DataInputStream(socket.getInputStream());
            dout=new DataOutputStream(socket.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    public static void main(String[] args) throws IOException {
        ServerSocket serverSocket = new ServerSocket(5111);


        Socket clientSocket = null;
        try {
            clientSocket = serverSocket.accept();
        } catch (IOException e) {
            e.printStackTrace();
        }


        try {


            TESTserver client = new TESTserver(clientSocket);



            new Thread(client).start();


            Scanner in = new Scanner(System.in);

            while(true){


                System.out.print("Input command: ");
                String command = in.nextLine();
                System.out.println("command:"+command);
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
                dout.writeBytes("TEST lk");
                String Command=din.readLine();
                System.out.println("Command:"+Command);
                dout.writeBytes("TEST lk");

                if(Command.contains("150"))
                {
                    System.out.println("transfer start:");

                    transferSocket=new Socket();
                    transferSocket.connect(new InetSocketAddress(transferPort),2000);
                    DataInputStream in = new DataInputStream(transferSocket.getInputStream());
                    DataOutputStream out=new DataOutputStream(transferSocket.getOutputStream());
                    File f = new File("new.txt");
                    FileOutputStream fout=new FileOutputStream(f);

                    byte[] buffer = new byte[1024];
                    int count;

                    while((count = in.read(buffer)) >= 0){
                        fout.write(buffer,0,count);
                    }
                    fout.close();
                    transferSocket.close();
                    //dsoc.close();
                }

            } catch (IOException e) {
                e.printStackTrace();
            }


        }
    }
}

package ClientTestOnly;

import java.io.*;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class Client implements Runnable {

    static int port = 5217;
    static int transferPort = 5218;

    Socket mainSocket;

    Socket transferSocket;

    String secondArgument="";

    DataInputStream din;
    DataOutputStream dout;

    String filesDir="clientFiles/";



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

                try {
                    Thread.sleep(100);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                System.out.print("Input command: ");
                String command = in.nextLine();

                try {
                    if(firstSplit(command).equals("LIST"))
                        client.secondArgument="list.txt";
                    else{
                        client.secondArgument=secondSplit(command);
                    }


                }catch (Exception e){

                }



                System.out.println("command:"+command);

                client.dout.writeBytes(command+"\n");
            }





        } catch (IOException e) {
            e.printStackTrace();
        }


    }
    static String  firstSplit(String command){
        String[] arg = command.split(" ");
        return arg[0];
    }
    static String  secondSplit(String command){
        String[] arg = command.split(" ");
        return arg[1];
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
                    DataInputStream in = new DataInputStream(transferSocket.getInputStream());
                    DataOutputStream out=new DataOutputStream(transferSocket.getOutputStream());

                    File f = new File(filesDir+secondArgument);
                    System.out.println("arg:"+secondArgument);
                    secondArgument="";
                    FileOutputStream fout=new FileOutputStream(f);

                    byte[] buffer = new byte[1024];
                    int count;

                    while((count = in.read(buffer)) >= 0){
                        fout.write(buffer,0,count);
                    }
                    fout.close();
                    transferSocket.close();

                }

                if(Command.contains("151")){
                    transferSocket=new Socket();

                    transferSocket.connect(new InetSocketAddress(transferPort),2000);
                    DataInputStream in = new DataInputStream(transferSocket.getInputStream());
                    DataOutputStream out=new DataOutputStream(transferSocket.getOutputStream());

                    File f = new File(filesDir+secondArgument);
                    secondArgument="";

                    FileInputStream fin=new FileInputStream(f);

                    byte[] buffer = new byte[1024];
                    int count;
                    while((count=fin.read(buffer)) > 0){
                        //(data,start,len)
                        out.write(buffer, 0, count);
                    }
                    fin.close();
                    transferSocket.close();

                }


            } catch (IOException e) {
                e.printStackTrace();
            }


        }
    }
}

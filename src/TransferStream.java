import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

class TransferStream{
	ServerSocket ServerSoc;
	Socket DataSoc;
	
    public  DataInputStream in;
    public  DataOutputStream out;
    
	TransferStream (int port){
		try {
			ServerSoc = new ServerSocket(port);
			DataSoc = ServerSoc.accept(); 
			
			in =new DataInputStream(DataSoc.getInputStream());
			out=new DataOutputStream(DataSoc.getOutputStream());

			System.out.println("DataSoc:"+(DataSoc!=null));

			System.out.println("in:"+(in!=null));

			System.out.println("out:"+(out!=null));
			
		} 
		catch(IOException ex){

			ex.printStackTrace();

			System.out.println(ex);
		};
			
	}
	public void close() throws IOException{
		out.flush();
		out.close();
		DataSoc.close();
		ServerSoc.close();
	}
}

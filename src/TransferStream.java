import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

class TransferStream{
	ServerSocket ServerSoc;
	Socket DataSoc;
	
    public static DataInputStream in;
    public static DataOutputStream out;	
    
	TransferStream (int port){
		try {
			ServerSoc = new ServerSocket(port);
			DataSoc = ServerSoc.accept(); 
			
			in =new DataInputStream(DataSoc.getInputStream());
			out=new DataOutputStream(DataSoc.getOutputStream());
			
		} 
		catch(Exception ex){};
			
	}
	public void close() throws IOException{
		out.flush();
		out.close();
		DataSoc.close();
		ServerSoc.close();
	}
}

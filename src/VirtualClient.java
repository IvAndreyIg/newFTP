import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.ArrayList;


public class VirtualClient {
	String vc_address;
	int vc_port;
	
	Socket VirtualClientSoc;

    DataInputStream vc_in;
    DataOutputStream vc_out;	

    public int allocated_memory = 0;
    int memory = 0;
    int files = 0;
    
	VirtualClient(String address,int port) throws UnknownHostException, IOException{
		vc_address = address; vc_port = port;
		
		Socket soc=new Socket(address,port);
		VirtualClientSoc=soc;
		vc_in=new DataInputStream(VirtualClientSoc.getInputStream());
		vc_out=new DataOutputStream(VirtualClientSoc.getOutputStream());	
		
		System.out.println("VirtualClient created " + address + " " + port);
	}
	public void SendToCluster(String command) throws IOException{
		vc_out.writeBytes(command + "\n");
	}
	@SuppressWarnings("deprecation")
	public ArrayList<String> GetRemoteList() throws IOException{
		SendToCluster("LIST");
		Debug.method("List send to cluster" + vc_port);
		
		ArrayList<String> StrList = new ArrayList<String>();
		
        String result = "";
		this.memory = 0;
		this.files = 0;
		
        while(true){
        	result = vc_in.readLine();
        	if (result.indexOf("226")!=-1) break;
        	StrList.add(result);
        	this.memory += Integer.parseInt(result.split(" ")[2]);
        	this.files++;
        	//Debug.file(result);
        }
		Debug.method("GetRemoteList END" + this.files);
        return StrList;
	}
	public void GetRemoteFile(String filename) throws IOException{
		Debug.method("GetRemoteFile Start");
		SendToCluster("RETR " + filename);

        byte[] buffer = new byte[1024];
        int count;
        
        TransferStream ts = new TransferStream(5218);

        //пересылка файлов через сервер
        while((count = vc_in.read(buffer)) >= 0){
        	ts.out.write(buffer, 0, count);
        	if (count != 1024) break;
        } 
        ts.close();
        Debug.method("GetRemoteFile END");
	}
	public void DeleteRemoteFile(String filename) throws IOException{
		Debug.method("DeleteRemoteFile Start");
		SendToCluster("DELE " + filename);
	}
	public void StorRemoteFile(String filename) throws IOException{
		Debug.method("StorRemoteFile Start");
		SendToCluster("STOR " + filename);
		
		TransferStream ts = new TransferStream(5218);
	//	dout.writeBytes(filename+":"+vc_address+":"+5218);
        byte[] buffer = new byte[1024];
        int count;
        
        while((count = ts.in.read(buffer)) >= 0){
        	vc_out.write(buffer, 0, count);
        }		
        
        ts.close();
		
        Debug.method("StorRemoteFile END");
	}
}

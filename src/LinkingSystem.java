import java.io.*;
import java.util.ArrayList;
import java.util.HashSet;


public class LinkingSystem {
	public ClusterCore[] Clusters;
	public ArrayList<String> ClusterAddress;
	public ArrayList<VirtualClient> VirtualClientList;
	
	ExtendedFileList ReloadableFileList = new ExtendedFileList();
	
	LinkingSystem(DBConnector connector){


		//
		System.out.println("LINKING SYSTEM INIT");


		ClusterAddress = new ArrayList<String>();
		VirtualClientList = new ArrayList<VirtualClient>();
		try {

	       // String line = null;



			HashSet<String> clusters = connector.getClusters();


			clusters.forEach(line->{
				Debug.log(" Хранилище: " + line + " загружено из конфигурации");
				ClusterAddress.add(line);
			});


			for (int i=0;i <= ClusterAddress.size();i++){
	        	String[] arg = ClusterAddress.get(i).split(":");
	        	TryConnect(arg[0],Integer.parseInt(arg[1]),Integer.parseInt(arg[2]));
	        }
		} catch(Exception ex){
			
		}
	}
	void TryConnect(String address,int port,int allocated_memory){
		try{
			//создаем подлкючение с помощью Socket
			VirtualClient l_vc = new VirtualClient(address,port);
			l_vc.allocated_memory = allocated_memory;
			VirtualClientList.add(l_vc);
			String config = "SYNX";
			for (int i=0;i<ClusterAddress.size();i++){
				config += " " + ClusterAddress.get(i);
				Debug.log(config);
			}
			l_vc.vc_out.writeBytes(config +" \n");
			Debug.log("Кластер с адресом " + address +":"+port + " подключен.");
		} catch(Exception ex){
			Debug.log(" Error: Не могу подключиться к кластеру по адресу " + address +":"+port);
		}
	}
	public ExtendedFileList GetRemoteListFromClusters(){
		Debug.method("\tGetRemoteListFromClusters");
		int port;
		String address;
		if (!VirtualClientList.isEmpty()){
			try {
				for (int i=0;i<VirtualClientList.size();i++){
					ArrayList<String> vc_file_list = new ArrayList<String>();
					address = VirtualClientList.get(i).vc_address;
					port = VirtualClientList.get(i).vc_port;
					Debug.dev("Команда лист отправлена на " + address + ":" + port);
					vc_file_list = VirtualClientList.get(i).GetRemoteList();
		
					for (int j=0;j<vc_file_list.size();j++){
						ReloadableFileList.add(vc_file_list.get(j) + "\n", address + ":" + port);
						Debug.file("Получен от кластера: " + vc_file_list.get(j));
					}
				}
				Debug.method("\tGetRemoteListFromClusters END");
				//ReloadableFileList.printfull();
				return ReloadableFileList;
			} catch (IOException e) {				
				e.printStackTrace();
				return ReloadableFileList;
			}
		} else {
			//System.out.println("EMPTY1");
			Debug.method("\tGetRemoteListFromClusters END");
			return ReloadableFileList;
		}
	}
	public void DeleteRemoteFileFromClusters(String filename, String address){
		Debug.method("\tDeleteRemoteFileFromClusters BEGIN ...");
		String c_address;
		int c_port;		
		if (!VirtualClientList.isEmpty()){
			try {
				for (int i=0;i<VirtualClientList.size();i++){
					c_address = VirtualClientList.get(i).vc_address;
					c_port = VirtualClientList.get(i).vc_port;
					//Debug.log(address + " совпадает " + c_address+ ":" + c_port);
					if (address.compareTo(c_address+ ":" + c_port ) == 0){
						VirtualClientList.get(i).DeleteRemoteFile(filename);
					}
				}
			} catch (IOException e) {
				
			}
		}
		Debug.method("\tDeleteRemoteFileFromClusters END ...");
	}
	public void GetRemoteFileFromClusters(String filename, String address){
		Debug.method("\tGetRemoteFileFromClusters Command Received ...");
		String c_address;
		int c_port;
		if (!VirtualClientList.isEmpty()){
			try {
				for (int i=0;i<VirtualClientList.size();i++){
					c_address = VirtualClientList.get(i).vc_address;
					c_port = VirtualClientList.get(i).vc_port;
					Debug.log(address + " совпадает " + c_address+ ":" + c_port);
					if (address.compareTo(c_address+ ":" + c_port ) == 0){
						VirtualClientList.get(i).GetRemoteFile(filename);
					}
				}
			} catch (IOException e) {
				
			}
		}
		
		Debug.method("\tGetRemoteFileFromClusters Command end ...");
	}
	public int StoreFileOnCluster(String filename) throws IOException{
		if (!VirtualClientList.isEmpty()){
			System.out.println("send on cluster");
			int c = GenCluster();

			Debug.dev("\tВыбран кластер номер - " + c);
			System.out.println(filename+":"+VirtualClientList.get(c).vc_address+":"+VirtualClientList.get(c).vc_port);

			//отправляем пользователю имя файла, который будет отправлятся,
			// адресс класстера и порт для подлюкчения через сокет



			VirtualClientList.get(c).StorRemoteFile(filename);

			return 0;
		} else {
			return -1;
		}
	}
	public int GenCluster(){
		return MathTable();
	}
	//математическая часть
	public int MathTable(){
		System.out.println("\n\n");
		System.out.println("=============== TABLE ===============");
		
		int all_memory = 0;
		int all_allocated_memory = 0;
		int all_files = 0;
		if (!VirtualClientList.isEmpty()){
			int[][] data = new int[VirtualClientList.size()][3];
			double[][] data_p = new double[VirtualClientList.size()][3];
			double[] MathOz = new double[VirtualClientList.size()+1];
			double[] MathOzKv = new double[VirtualClientList.size()+1];
			double[] SrednKv = new double[VirtualClientList.size()+1];
			int[] num = new int[VirtualClientList.size()+1];
			
			
			for (int i=0;i<VirtualClientList.size();i++){
				int files = VirtualClientList.get(i).files; 
				int memory = VirtualClientList.get(i).memory;
				int allocated_memory = VirtualClientList.get(i).allocated_memory;
				
				data[i][0] = allocated_memory*1024;
				data[i][1] = memory;
				data[i][2] = files;
				
				all_files += files;
				all_memory+=memory;
				all_allocated_memory+=allocated_memory*1024;
			}
			for (int i=0;i<VirtualClientList.size();i++){
				data_p[i][0] = (float)data[i][0]/(float)all_allocated_memory;
				data_p[i][1] = (float)data[i][1]/(float)all_memory;
				data_p[i][2] = (float)data[i][2]/(float)all_files;
				System.out.println(data[i][0] + " | " + data[i][1] + " | " + data[i][2]);
			}
			for (int i=0;i<VirtualClientList.size();i++){
				System.out.println(data_p[i][0] + " | " + data_p[i][1] + " | " + data_p[i][2]);
			}
		//	System.out.println("============ TABLE END ==============");
		//	System.out.println("\n\n");

			for (int j=0;j<3;j++){
				double sum = 0;
				for (int i=0;i<VirtualClientList.size();i++){
					sum = sum + (data[i][j]*data_p[i][j]);
				}
				MathOz[j] = sum;
				System.out.println("Mathoz:" + sum);
			}
			for (int j=0;j<3;j++){
				double sum = 0;
				for (int i=0;i<VirtualClientList.size();i++){
					sum = sum + (Math.pow(data[i][j],2)*data_p[i][j]);
				}
				MathOzKv[j] = sum;
			}
			for (int j=0;j<3;j++){
				SrednKv[j] = Math.sqrt(MathOzKv[j] - MathOz[j]*MathOz[j]);
				System.out.println("SrednKv:" + SrednKv[j]);
			}
			for (int i=0;i<VirtualClientList.size()+1;i++) num[i] = 0;
			for (int j=0;j<3;j++){
				for (int i=0;i<VirtualClientList.size();i++){
					if ((data[i][j] >= (MathOz[j]-SrednKv[j])) && (data[i][j] <= (MathOz[j]+SrednKv[j]))){
						//System.out.println( MathOz[j]-SrednKv[j] + "<" + data[i][j] + "<" +  (MathOz[j]+SrednKv[j]) + "------ " + i);
						num[i]++;
					}
				}
			}
			for (int i=0;i<VirtualClientList.size()+1;i++){
				if (num[i] >= 2) return i; 
			}
			
		}
		else {
		//	System.out.println("EMPTY2");
			Debug.method("\tGetRemoteListFromClusters END");
		}
		System.out.println("============ TABLE END ==============");
		System.out.println("\n\n");
		return 0;
	}
	public int MathTest(){
		System.out.println("\n\n");
		System.out.println("=============== TABLE ===============");

		int all_memory = 0;
		int all_allocated_memory = 0;
		int all_files = 0;
		if (!VirtualClientList.isEmpty()){
			int[][] data = new int[VirtualClientList.size()][3];
			double[][] data_p = new double[VirtualClientList.size()][3];
			double[] MathOz = new double[VirtualClientList.size()+1];
			double[] MathOzKv = new double[VirtualClientList.size()+1];
			double[] SrednKv = new double[VirtualClientList.size()+1];

			int[] num = new int[VirtualClientList.size()+1];

			System.out.println("VirtualClientList.size():"+VirtualClientList.size());


			for (int i=0;i<VirtualClientList.size();i++){
				int files = VirtualClientList.get(i).files;
				int memory = VirtualClientList.get(i).memory;
				int allocated_memory = VirtualClientList.get(i).allocated_memory;

				data[i][0] = allocated_memory*1024;
				data[i][1] = memory;
				data[i][2] = files;

				all_files += files;
				all_memory+=memory;
				all_allocated_memory+=allocated_memory*1024;
			}
			for (int i=0;i<VirtualClientList.size();i++){
				data_p[i][0] = (float)data[i][0]/(float)all_allocated_memory;
				data_p[i][1] = (float)data[i][1]/(float)all_memory;
				data_p[i][2] = (float)data[i][2]/(float)all_files;
				//System.out.println(data[i][0] + " | " + data[i][1] + " | " + data[i][2]);
			}
			System.out.println("\t|num\t|all_mem*1024\t|memory\t|files\t|data_p[i][0]\t|data_p[i][1]\t|data_p[i][2]\t|");
			for (int i=0;i<VirtualClientList.size();i++){

				System.out.println("\n\t|"+i+"\t|"+data[i][0]+"\t|"+(data[i][1]/1024)+"\t|"+data[i][2]+"\t|"+data_p[i][0]+"\t|"+data_p[i][1]+"\t|"+data_p[i][2]+"\t|");

				//System.out.println(data_p[i][0] + " | " + data_p[i][1] + " | " + data_p[i][2]);
			}
			//	System.out.println("============ TABLE END ==============");
			//	System.out.println("\n\n");

			for (int j=0;j<3;j++){
				double sum = 0;
				for (int i=0;i<VirtualClientList.size();i++){
					sum = sum + (data[i][j]*data_p[i][j]);
				}
				MathOz[j] = sum;
				System.out.println("Mathoz:" + sum);
			}
			for (int j=0;j<3;j++){
				double sum = 0;
				for (int i=0;i<VirtualClientList.size();i++){
					sum = sum + (Math.pow(data[i][j],2)*data_p[i][j]);
				}
				MathOzKv[j] = sum;
			}
			for (int j=0;j<3;j++){
				SrednKv[j] = Math.sqrt(MathOzKv[j] - MathOz[j]*MathOz[j]);


				double v = MathOzKv[j] - MathOz[j] * MathOz[j];
				System.out.println("SrednKv: " + SrednKv[j]+"  MathOzKv[j]: "+ MathOzKv[j]+"  MathOz[j]: "+MathOz[j]+ "   MathOzKv[j] - MathOz[j]*MathOz[j]"+  v);
			}
			for (int i=0;i<VirtualClientList.size()+1;i++)
				num[i] = 0;

			for (int j=0;j<3;j++){
				for (int i=0;i<VirtualClientList.size();i++){
					if ((data[i][j] >= (MathOz[j]-SrednKv[j])) && (data[i][j] <= (MathOz[j]+SrednKv[j]))){
						//System.out.println( MathOz[j]-SrednKv[j] + "<" + data[i][j] + "<" +  (MathOz[j]+SrednKv[j]) + "------ " + i);
						num[i]++;
					}
				}
			}
			for (int i=0;i<VirtualClientList.size()+1;i++){
				if (num[i] >= 2) return i;
			}

		}
		else {
			//	System.out.println("EMPTY2");
			Debug.method("\tGetRemoteListFromClusters END");
		}
		System.out.println("============ TABLE END ==============");
		System.out.println("\n\n");
		return 0;
	}
}

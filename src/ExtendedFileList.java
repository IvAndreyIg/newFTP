import java.util.ArrayList;


public class ExtendedFileList {
	ArrayList<String> FileNames = new ArrayList<String>();
	ArrayList<String> FileAddress = new ArrayList<String>();

	
	public void add(String filename,String address){
		FileNames.add(filename);
		FileAddress.add(address);
	}
	public void delete(String filename){
		int index = FileNames.indexOf(filename);
		FileNames.remove(index);
		FileAddress.remove(index);
	}
	public int length(){
		return FileNames.size();
	}
	public String[] get(int n){
		FileNames.get(n);
		FileAddress.get(n);
		
		String[] ret = {FileNames.get(n).toString(),FileAddress.get(n).toString()};
		return ret;
	}	
	public void clear(){
		FileNames.clear();
		FileAddress.clear();
	}
	public void print(){
		for (int i = 0; i < FileNames.size(); i++){
			System.out.println(FileNames.get(i));
		}
	}
	public void printfull(){
		for (int i = 0; i < FileNames.size(); i++){
			System.out.println(FileNames.get(i) + "   " + FileAddress.get(i));
		}
	}
}

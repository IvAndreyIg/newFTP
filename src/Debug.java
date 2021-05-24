
public class Debug {
	public static boolean log = true;
	public static boolean file = true;
	public static boolean method = true;
	public static boolean main = true;
	public static boolean cmd = true;
	public static boolean dev = true;
	
	public static void log(String msg){
		if (log) System.out.println("[LOG] " + msg);
	}
	public static void file(String msg){
		if (file) System.out.println("[FILE] " + msg);
	}
	public static void method(String msg){
		if (method) System.out.println("[METHOD] " + msg);
	}
	public static void main(String msg){
		if (main) System.out.println("[Avalon] " + msg);
	}
	public static void cmd(String msg){
		if (cmd) System.out.println("[CMD] " + msg);
	}
	public static void dev(String msg){
		if (dev) System.out.println("[DEV] " + msg);
	}
}

import java.util.HashMap;
import java.util.HashSet;

public interface DBConnector {


    public void  connect();

    public HashSet<String> getClusters();

    public HashMap<String,String> getUsers();


}

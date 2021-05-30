import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class LocalDBConnector implements DBConnector{



    private String clustersPath="";

    private String usersPath="";

    @Override
    public void connect() {



        clustersPath="clusters.txt";

        usersPath="users.txt";
    }

    @Override
    public HashSet<String> getClusters() {


        HashSet<String> clustersSet = new HashSet<>();

        File file = new File( clustersPath );


        try {
            BufferedReader br = new BufferedReader (
                    new InputStreamReader(
                            new FileInputStream( file ), StandardCharsets.UTF_8
                    )
            );
            String line = null;
            while ((line = br.readLine()) != null) {
              //  Debug.log(" Хранилище: " + line + " загружено из конфигурации");
                clustersSet.add(line);
            }
            br.close();

        } catch(Exception ex){

        }



        return clustersSet;
    }

    @Override
    public HashMap<String, String> getUsers() {
        Debug.method("LoadUserList");


        HashMap<String, String> stringStringHashMap = new HashMap<String, String>();


        File file = new File( usersPath );
        try {
            if(!file.exists()) {
                file.createNewFile();
                FileOutputStream fout=new FileOutputStream(file);
                fout.write(("admin pass" + "\r\n").getBytes());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            BufferedReader br = new BufferedReader (
                    new InputStreamReader(
                            new FileInputStream( file ), "UTF-8"
                    )
            );
            String line = null;
            while ((line = br.readLine()) != null) {


                String login=Tools.fifthSplit(line);

                String password=Tools.secondSplit(line);

                stringStringHashMap.put(login,password);



                //Debug.log("Пользователь " + line);
            }
            br.close();
        } catch(Exception ex){ ex.printStackTrace();}





        return stringStringHashMap;
    }
}

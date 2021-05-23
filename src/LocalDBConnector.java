import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashSet;

public class LocalDBConnector implements DBConnector{



    private String clustersPath="";

    @Override
    public void connect() {



        clustersPath="clusters.txt";
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
}

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.sql.*;
import java.util.HashMap;
import java.util.HashSet;

public class mySQLConnector implements DBConnector{

    private String clustersPath="";

    private String usersPath="";


    Connection conDB=null;
    Statement statement =null;

    @Override
    public void connect(String host ,String login, String password) {





        try {
            conDB= DriverManager.getConnection("jdbc:mysql://"+host+"?useUnicode=true&serverTimezone=UTC",login,password);
            statement=conDB.createStatement();

        } catch (SQLException error) {
            error.printStackTrace();
        }
    }

    @Override
    public void connect() {
        String host = "localhost:3306/localdb";
        String login = "Andrey";
        String password = "myPassword";


        try {
            conDB= DriverManager.getConnection("jdbc:mysql://"+host+"?useUnicode=true&serverTimezone=UTC",login,password);
            statement=conDB.createStatement();

        } catch (SQLException error) {
            error.printStackTrace();
        }
    }

    @Override
    public HashSet<String> getClusters() {

        System.out.println("try get sql clusters");


        HashSet<String> clustersSet = new HashSet<>();


        ResultSet rs = null;

        try {
            //создаем строку запроса данных пользователей
            String query="SELECT * FROM clusters";
            //выполняем запрос и получаем данные
            rs = statement.executeQuery(query);

            //проверяем данные на правильность
            while ( rs.next() ) {


                String address = rs.getString("address");

                String port = rs.getString("port");

                String memory = rs.getString("memory");

                clustersSet.add(address+":"+port+":"+memory);

                System.out.println("clusters: "+ address+" "+port);

            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }







        return clustersSet;
    }

    @Override
    public HashMap<String, String> getUsers() {

        System.out.println("try get sql users");

        HashMap<String, String> stringStringHashMap = new HashMap<String, String>();

        ResultSet rs = null;

        try {
            //создаем строку запроса данных пользователей
            String query="SELECT * FROM users";
            //выполняем запрос и получаем данные
            rs = statement.executeQuery(query);

            //проверяем данные на правильность
            while ( rs.next() ) {


                String login = rs.getString("login");

                String password = rs.getString("password");

                stringStringHashMap.put(login,password);

                System.out.println("user: "+ login+" "+password);

            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }







        return stringStringHashMap;
    }
}

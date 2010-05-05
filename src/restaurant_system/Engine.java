/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package restaurant_system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Veermin
 */
public class Engine {
    private static Connection connect() {
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "restaurant";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "";
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url+dbName,userName,password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    private static void close(Connection conn) {
        try {
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
   
    public static Object[] loginList() {
        Object[] array = null;
        Connection conn = connect();

        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT name, surname FROM employees");

            while (rs.next()) {
                array[array.length+1]=rs.getString("name") + " " + rs.getString("surname");
            }

            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }

        close(conn);
        return array;
    }
}

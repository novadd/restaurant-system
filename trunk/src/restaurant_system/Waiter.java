/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package restaurant_system;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Veermin
 */
public class Waiter {
    private class DB {
        public Connection Connect() {
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
        
        public void Close(Connection conn) {
            try {
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

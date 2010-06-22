/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package restaurant_system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


/**
 *
 * @author Veermin
 */
public class Engine {

    // Odpowiada za łączenie z bazą danych
    protected static Connection connect() {
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

    //Zamknięcie połączenia z bazą danych
    protected static void close(Connection conn) {
        try {
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    
    /**
     * Tworzenie bazy danych, na początku działania programu
     */
    public static void createDB() {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("SET SQL_MODE=\"NO_AUTO_VALUE_ON_ZERO\"");
            statement.executeUpdate("CREATE DATABASE IF NOT EXISTS `restaurant`");
            statement.executeUpdate("USE `restaurant`");
            statement.executeUpdate("CREATE TABLE IF NOT EXISTS `bills` (" +
                    "   `id` bigint(20) NOT NULL AUTO_INCREMENT, " +
                    "   `bill_id` int(11) NOT NULL," +
                    "   `menu_id` int(11) NOT NULL," +
                    "   `discount_id` int(11) NOT NULL," +
                    "   `waiter_id` int(11) NOT NULL," +
                    "   `status` text, " +
                    "   PRIMARY KEY (`id`) " +
                    ") ENGINE=MyISAM DEFAULT CHARSET=latin2");
            statement.executeUpdate("CREATE TABLE IF NOT EXISTS `discounts` (" +
                    "   `id` int(11) NOT NULL," +
                    "   `description` text NOT NULL," +
                    "   `percentage` int(11) NOT NULL," +
                    "   PRIMARY KEY (`id`) " +
                    ") ENGINE=MyISAM DEFAULT CHARSET=latin2;");
            statement.executeUpdate("CREATE TABLE IF NOT EXISTS `employees` (" +
                    "   `id` int(11) NOT NULL AUTO_INCREMENT," +
                    "   `name` text NOT NULL," +
                    "   `surname` text NOT NULL," +
                    "   `function` text NOT NULL," +
                    "   PRIMARY KEY (`id`)" +
                    ") ENGINE=MyISAM  DEFAULT CHARSET=latin2 AUTO_INCREMENT=19 ;");
            statement.executeUpdate("CREATE TABLE IF NOT EXISTS `menu` (" +
                    "   `id` int(11) NOT NULL AUTO_INCREMENT," +
                    "   `name` text NOT NULL," +
                    "   `price` decimal(10,2) NOT NULL," +
                    "   `category` text NOT NULL," +
                    "   `status` text," +
                    "   PRIMARY KEY (`id`)" +
                    ") ENGINE=MyISAM  DEFAULT CHARSET=latin2 AUTO_INCREMENT=3 ;");
            statement.executeUpdate("CREATE TABLE IF NOT EXISTS `tables` (" +
                    "   `table_id` int(11) NOT NULL," +
                    "   `bill_id` int(11) NOT NULL," +
                    "   PRIMARY KEY (`bill_id`)" +
                    ") ENGINE=MyISAM DEFAULT CHARSET=latin2;");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

     /**
     * Dekodujne funckję z podanego LoginID
     * @param LoginID
     * @return
     */
    public static String decodeLoginIDFunction(Object LoginID) {
        String function = new String();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `employees` WHERE `id`=" + LoginID.toString());
            while (rs.next()) {
                function = rs.getString("function");
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        return function;
    }

    //Wyrzuca Array z nazwiskiem, imieniem i funcją pracowników
    /**
     *
     * @return
     */
    public static Object[] loginList() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `employees`");
            while (rs.next()) {
                list.add(rs.getString("surname") + " " + rs.getString("name") + " (" + rs.getString("function") + ")");
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        return list.toArray();
    }

    /**
     * Wyrzuca w formie arraya ID pracowników (ta sama kolejność co w liście z nazwiskami)
     * @return
     */
    public static int[] loginListID() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `employees`");
            while (rs.next()) {
                list.add(rs.getInt("id"));
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        int[] ret = new int[list.size()];
        for (int i=0; i<list.size(); i++) {
            ret[i] = ((Integer)list.get(i)).intValue();
        }
        return ret;
    }












    

    

    
    /**
     * Dekodujne imię z podanego LoginID
     * @param LoginID
     * @return
     */
    public static String decodeLoginIDName(Object LoginID) {
        String name = new String();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `employees` WHERE `id`=" + LoginID.toString());
            while (rs.next()) {
                name = rs.getString("name");
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        return name;
    }

    
    /**
     * Dekodujne nazwisko z podanego LoginID
     * @param LoginID
     * @return
     */
    public static String decodeLoginIDSurname(Object LoginID) {
        String surname = new String();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `employees` WHERE `id`=" + LoginID.toString());
            while (rs.next()) {
                surname = rs.getString("surname");
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        return surname;
    }

    
   

    
    

    
    /**
     * Wydaje nazwe potrawy na podstawie jej ID
     * @param MenuID
     * @return
     */
    public static String decodeMenuID(Object MenuID) {
        String name = new String();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `menu` WHERE `id`=" + MenuID.toString());
            while (rs.next()) {
                name = rs.getString("name");
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        return name;
    }

    

   
  
    

    

   
   

  
   

   
    

 
    

    
    /**
     * Sprawdzenie, jaki status ma potrawa z danego menu
     * @param menu_id
     * @return
     
    public static String menuCheckStatus(Object menu_id) {
        String ret = null;
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `menu` "
                    + "WHERE `id`=" + menu_id.toString());
            while (rs.next()) {
                ret=rs.getString("status");
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        return ret;
    }
    */
    
    

    

    

    


    


    

    /**
     *
     * @param ID
     * @return
     
    public static int checkMealTable(Object ID) {
        int ret = -1;
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * " +
                    " FROM `bills` " +
                    " LEFT JOIN `tables` ON `bills`.`bill_id`=`tables`.`bill_id` " +
                    " WHERE `id`=" + ID.toString());
            if (rs.next()) {
                ret = rs.getInt("bill_id");
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        return ret;
    }
    */
    

    
}

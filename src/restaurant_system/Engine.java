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

    private static void createDB() {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SET SQL_MODE=\"NO_AUTO_VALUE_ON_ZERO\";" +
                    "CREATE DATABASE `restaurant` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;" +
                    "USE `restaurant`;" +
                    "CREATE TABLE IF NOT EXISTS `bills` (" +
                    "   `bill_id` int(11) NOT NULL," +
                    "   `menu_id` int(11) NOT NULL," +
                    "   `discount_id` int(11) NOT NULL," +
                    "   `status` text NOT NULL" +
                    ") ENGINE=MyISAM DEFAULT CHARSET=latin2;" +
                    "CREATE TABLE IF NOT EXISTS `discounts` (" +
                    "   `id` int(11) NOT NULL," +
                    "   `description` text NOT NULL," +
                    "   `percentage` int(11) NOT NULL" +
                    ") ENGINE=MyISAM DEFAULT CHARSET=latin2;" +
                    "CREATE TABLE IF NOT EXISTS `employees` (" +
                    "   `id` int(11) NOT NULL AUTO_INCREMENT," +
                    "   `name` text NOT NULL," +
                    "   `surname` text NOT NULL," +
                    "   `function` text NOT NULL," +
                    "   PRIMARY KEY (`id`)" +
                    ") ENGINE=MyISAM  DEFAULT CHARSET=latin2 AUTO_INCREMENT=19 ;" +
                    "CREATE TABLE IF NOT EXISTS `menu` (" +
                    "   `id` int(11) NOT NULL AUTO_INCREMENT," +
                    "   `name` text NOT NULL," +
                    "   `price` decimal(10,2) NOT NULL," +
                    "   `category` text NOT NULL," +
                    "   PRIMARY KEY (`id`)" +
                    ") ENGINE=MyISAM  DEFAULT CHARSET=latin2 AUTO_INCREMENT=3 ;" +
                    "CREATE TABLE IF NOT EXISTS `tables` (" +
                    "   `table_id` int(11) NOT NULL," +
                    "   `bill_id` int(11) NOT NULL," +
                    "   `status` text NOT NULL," +
                    "   PRIMARY KEY (`table_id`,`bill_id`)" +
                    ") ENGINE=MyISAM DEFAULT CHARSET=latin2;");
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }
   
    public static Object[] loginList() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM employees");
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

    public static String decodeLoginIDName(Object LoginID) {
        String name = new String();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM employees WHERE id=" + LoginID.toString());
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

    public static String decodeLoginIDSurname(Object LoginID) {
        String surname = new String();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM employees WHERE id=" + LoginID.toString());
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

    public static String decodeLoginIDFunction(Object LoginID) {
        String function = new String();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM employees WHERE id=" + LoginID.toString());
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
    
    public static Object[] loginListID() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM employees");
            while (rs.next()) {
                list.add(rs.getString("id"));
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

    public static String decodeMenuID(Object MenuID) {
        String name = new String();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM menu WHERE id=" + MenuID.toString());
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

    public static Object[] menuCategory(String category) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM menu WHERE category='" + category + "'");
            while (rs.next()) {
                list.add(rs.getString("name") + " (" + rs.getString("price") + " zł)");
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

    public static Object[] menuList() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM menu");
            while (rs.next()) {
                list.add(rs.getString("name") + " (" + rs.getString("price") + " zł)");
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

    public static Object[] menuListID() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM menu");
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
        return list.toArray();
    }

    public static Object[] printBill(Object billID) {
        ArrayList list = new ArrayList();
        Double sum=0.0;
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT menu.name AS name, (menu.price * (1-discounts.percentage/100)) AS price FROM menu, orders, bills " +
                    " WHERE bills.menu_id=menu.id, bills.discount_id=discounts.id, bills.bill_id="+billID.toString());
            while (rs.next()) {
                list.add(rs.getString("name") + " (" + rs.getFloat("price") + " zł)");
                sum=(double)sum + rs.getInt("price");
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        list.add("Sum: " + sum + " zł");
        return list.toArray();
    }

    public static void addToBill(Object billID, Object menuID, Object discountID) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO bills (bill_id, menu_id, discount_id, status) "
                + "VALUES "
                + "(" + billID.toString() + ", " + menuID.toString() + ", " + discountID.toString() + ", waiting)");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static void removeFromBill(Object billID, Object menuID, Object discountID) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM bills "
                + "WHERE bill_id=" + billID.toString() + ", menu_id=" + menuID.toString() + ", discount_id=" + discountID.toString() + " "
                + "LIMIT 1");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static Object[] billsListFromTable(Object tableID) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM tables "
                    + "WHERE table_id=" + tableID.toString());
            while (rs.next()) {
                list.add(rs.getString("bill_id"));
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

    public static void addBillToTable(Object tableID, Object billID) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO tables (table_id, bill_id, status) "
                + "VALUES "
                + "(" + tableID.toString() + ", " + billID.toString() + ", waiting)");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static void removeBillFromTable(Object tableID, Object billID) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM tables "
                + "WHERE table_id=" + tableID.toString() + ", bill_id=" + billID.toString() + " "
                + "LIMIT 1");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }
}

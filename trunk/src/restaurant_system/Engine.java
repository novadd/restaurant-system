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
   
    public static Object[] loginList() {
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

    public static String decodeMenuID(int MenuID) {
        String name = new String();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM menu WHERE id=" + MenuID);
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

    public static Integer[] menuListID() {
        ArrayList<Integer> list = new ArrayList<Integer>();
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
        Integer[] list2 = new Integer[list.size()];
        for (int i=0; i<list.size(); i++) {
            list2[i] = list.get(i);
        }
        return list2;
    }

    public static Object[] printBill(int billID) {
        ArrayList list = new ArrayList();
        Double sum=0.0;
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT menu.name AS name, (menu.price * (1-discounts.percentage/100)) AS price FROM menu, orders, bills " +
                    " WHERE bills.menu_id=menu.id, bills.discount_id=discounts.id, bills.bill_id="+billID);
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

    public static void addToBill(int billID, int menuID, int discountID) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO bills (bill_id, menu_id, discount_id, status) "
                + "VALUES "
                + "(" + billID + ", " + menuID + ", " + discountID + ", waiting)");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }
}

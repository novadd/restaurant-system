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

    public static void createDB() {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("SET SQL_MODE=\"NO_AUTO_VALUE_ON_ZERO\"");
            statement.executeUpdate("CREATE DATABASE IF NOT EXISTS `restaurant`");
            statement.executeUpdate("USE `restaurant`");
            statement.executeUpdate("CREATE TABLE IF NOT EXISTS `bills` (" +
                    "   `bill_id` int(11) NOT NULL," +
                    "   `menu_id` int(11) NOT NULL," +
                    "   `discount_id` int(11) NOT NULL," +
                    "   `waiter_id` int(11) NOT NULL," +
                    "   `status` text NOT NULL" +
                    ") ENGINE=MyISAM DEFAULT CHARSET=latin2");
            statement.executeUpdate("CREATE TABLE IF NOT EXISTS `discounts` (" +
                    "   `id` int(11) NOT NULL," +
                    "   `description` text NOT NULL," +
                    "   `percentage` int(11) NOT NULL" +
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
                    "   PRIMARY KEY (`table_id`,`bill_id`)" +
                    ") ENGINE=MyISAM DEFAULT CHARSET=latin2;");
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
    
    public static int[] loginListID() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM employees");
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

    public static ArrayList printBillMenuID(Object billID) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT menu.id " +
                    " FROM bills " +
                    " LEFT JOIN menu ON bills.menu_id = menu.id " +
                    " WHERE bills.bill_id = " + billID.toString() +
                    " GROUP BY bills.menu_id, bills.discount_id ");
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
        return list;
    }

    public static ArrayList printBill(Object billID) {
        ArrayList list = new ArrayList();
        Double sum=0.0;
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT menu.name, menu.price, discounts.percentage, COUNT( * ) AS number " +
                    " FROM bills " +
                    " LEFT JOIN discounts ON discounts.id = bills.discount_id " +
                    " LEFT JOIN menu ON bills.menu_id = menu.id " +
                    " WHERE bills.bill_id = " + billID.toString() +
                    " GROUP BY bills.menu_id, bills.discount_id ");
            while (rs.next()) {
                list.add(rs.getString("number") + "x " + rs.getString("name") + " (" + (rs.getFloat("price") * (100-rs.getInt("percentage"))/100) + " zł)");
                sum=(double)sum + (rs.getFloat("price") * (100-rs.getInt("percentage"))/100)*(rs.getInt("number"));
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        list.add("Sum: " + sum + " zł");
        return list;
    }

    public static Object addToBill(Object billID, Object menuID, Object discountID, Object waiterID, int howMany) {
        Connection conn = connect();
        if (billID!=null) {
            try {
                Statement statement = conn.createStatement();
                String query;
                String data;
                query = "INSERT INTO bills (bill_id, menu_id, discount_id, waiter_id, status) VALUES ";
                data = "(" + billID.toString() + ", " + menuID.toString() + ", " + discountID.toString() + ", " + waiterID.toString() + ", \"waiting\")";
                for (int i=0; i<howMany-1; i++) {
                    query += data + ", ";
                }
                query += data;
                statement.executeUpdate(query);
                statement.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            close(conn);
        } else {
            try {
                Statement statement = conn.createStatement();
                ResultSet rs = statement.executeQuery("SELECT MAX(bill_id) AS max FROM bills");
                if (rs.next()) {
                    billID=(rs.getInt("max") + 1);
                } else {
                    billID="0";
                }
                statement.executeUpdate("INSERT INTO bills (bill_id, menu_id, discount_id, waiter_id, status) "
                    + "VALUES "
                    + "(" + billID.toString() + ", " + menuID.toString() + ", " + discountID.toString() + ", " + waiterID.toString() + ", \"waiting\")", statement.RETURN_GENERATED_KEYS);
                rs = statement.getGeneratedKeys();
                if (rs.next()) {
                    billID = rs.getString(1);
                }
                rs.close();
                statement.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            close(conn);
        }
        return billID;
    }

    public static void removeFromBill(Object billID, Object menuID, Object discountID, int howMany) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM restaurant.bills "+
                    "WHERE bills.bill_id=" + billID.toString() + " AND bills.menu_id=" + menuID.toString() + " AND bills.discount_id=" + discountID.toString() +
                    " LIMIT " + String.valueOf(howMany));
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static ArrayList billsListFromTable(Object tableID) {
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
        return list;
    }

    public static void addBillToTable(Object tableID, Object billID) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO tables (table_id, bill_id) "
                + "VALUES "
                + "(" + tableID.toString() + ", " + billID.toString() + ")");
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
                + "WHERE table_id=" + tableID.toString() + " AND bill_id=" + billID.toString());
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static Object checkWhoServesTable(Object tableID) {
        Object waiterID = null;
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT tables.table_id, bills.bill_id, bills.waiter_id AS waiter_id " +
                    " FROM `tables` LEFT JOIN bills ON tables.bill_id=bills.bill_id "
                    + "WHERE tables.table_id=" + tableID.toString() + " LIMIT 1");
            if (rs.next()) {
                waiterID = (rs.getString("waiter_id"));
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        return waiterID;
    }

    public static String menuCheckStatus(int menu_id) {
        String ret = null;
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM menu "
                    + "WHERE id=" + String.valueOf(menu_id));
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

    //status: ok, low, nok
    public static ArrayList menuCheckWhichHaveStatus(String status) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT menu_id, COUNT(*) as number FROM bills "
                    + " WHERE status=" + status
                    + " GROUP BY menu_id");
            while (rs.next()) {
                list.add(rs.getInt("menu_id"));
                list.add(rs.getInt("number"));
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        return list;
    }

    public static void menuSetStatus(int menu_id, String status) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("UPDATE menu "
                + "SET status=" + status 
                + "WHERE id=" + String.valueOf(menu_id));
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static void menuAddItem(String name, double price, String category) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO menu (name, price, category) "
                + "VALUES "
                + "(" + name + ", " + String.valueOf(price) + ", " + category + ")");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static void menuRemoveItem(int menu_id) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM menu "
                + "WHERE id=" + String.valueOf(menu_id));
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static void employeeAdd(String name, String surname, String function) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO employees (name, surname, function) "
                + "VALUES "
                + "(" + name + ", " + surname + ", " + function + ")");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static void employeeRemove(int employee_id) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM employees "
                + "WHERE id=" + String.valueOf(employee_id));
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static void discountAdd(String description, int percentage) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO discounts (description, percentage) "
                + "VALUES "
                + "(" + description + ", " + String.valueOf(percentage) + ")");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static void discountRemove(int discount_id) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM discounts "
                + "WHERE id=" + String.valueOf(discount_id));
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static ArrayList statisticsBillsFromWaiter(int waiter_id) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM bills " +
                    "WHERE waiter_id=" + waiter_id +
                    "GROUP BY bill_id");
            while (rs.next()) {
                list.add(rs.getInt("bill_id"));
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        return list;
    }
}

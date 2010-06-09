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

    //Zamknięcie połączenia z bazą danych
    private static void close(Connection conn) {
        try {
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //Tworzenie bazy danych, na początku działania programu
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

    public static void printReceipt(ArrayList list) {
        try{
            java.io.FileWriter fstream = new java.io.FileWriter("receipts.txt",true);
            java.io.BufferedWriter out = new java.io.BufferedWriter(fstream);
            java.util.Iterator it = list.iterator();
            //out.print(java.util.Date(););
            while (it.hasNext()) {
                out.write(it.next().toString());
                out.newLine();
            }
            out.newLine();
            out.close();
        }catch (Exception e){//Catch exception if any
            System.err.println("Error: " + e.getMessage());
        }
    }

    //Wyrzuca Array z nazwiskiem, imieniem i funcją pracowników
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

    //Dekodujne imię z podanego LoginID
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

    //Dekodujne nazwisko z podanego LoginID
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

    //Dekodujne funckję z podanego LoginID
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

    //Wyrzuca w formie arraya ID pracowników (ta sama kolejność co w liście z nazwiskami)
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

    //Wydaje nazwe potrawy na podstawie jej ID
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

    //Lista menu z danej kategorii
    public static Object[] menuCategory(String category) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `menu` WHERE `category`=\"" + category + "\"");
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

    //cennik potraw
    public static Object[] menuList() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `menu`");
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

    //id kolejnych potraw z cennika
    public static Object[] menuListID() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `menu`");
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

    public static ArrayList printBillMenuIDByStatus(String status) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT `menu`.`id`" +
                    " FROM `bills` " +
                    " LEFT JOIN `tables` ON `bills`.`bill_id`=`tables`.`table_id` " +
                    " LEFT JOIN `menu` ON `menu`.`id`=`bills`.`menu_id` " +
                    " WHERE `bills`.`status`=\"" + status + "\"" +
                    " ORDER BY bills.id ASC");
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

    public static ArrayList printBillIDByStatus(String status) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT `bills`.`id`" +
                    " FROM `bills` " +
                    " WHERE `bills`.`status`=\"" + status + "\"" +
                    " ORDER BY bills.id ASC");
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

    public static ArrayList printBillByStatus(String status) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT `menu`.`name`, `tables`.`table_id` " +
                    " FROM `bills` " +    
                    " LEFT JOIN `menu` ON `menu`.`id` = `bills`.`menu_id` " +
                    " LEFT JOIN `tables` ON `bills`.`bill_id` = `tables`.`bill_id` " +
                    " WHERE bills.status = \"" + status + "\"" +
                    " ORDER BY bills.id ASC");
            while (rs.next()) {
                list.add(rs.getString("name") + " (" + rs.getString("table_id") + ")");
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

    //id kolejnych potraw z danego rachunku
    public static ArrayList printBillMenuID(Object billID) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT `menu`.`id` " +
                    " FROM `bills` " +
                    " LEFT JOIN `menu` ON `bills`.`menu_id` = `menu`.`id` " +
                    " WHERE `bills`.`bill_id` = " + billID.toString() +
                    " GROUP BY `bills`.`menu_id`, `bills`.`discount_id` ");
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

    //wyswietlenie podsumowania rachunku
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

    //dodanie potrawy do rachunku
    public static Object addToBill(Object billID, Object menuID, Object discountID, Object waiterID, int howMany) {
        Connection conn = connect();
        if (billID!=null) {
            try {
                Statement statement = conn.createStatement();
                String query;
                String data;
                query = "INSERT INTO bills (bill_id, menu_id, discount_id, waiter_id) VALUES ";
                data = "(\"" + billID.toString() + "\", \"" + menuID.toString() + "\", \"" + discountID.toString() + "\", \"" + waiterID.toString() + "\")";
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
                statement.executeUpdate("INSERT INTO bills (bill_id, menu_id, discount_id, waiter_id) "
                    + "VALUES "
                    + "(\"" + billID.toString() + "\", \"" + menuID.toString() + "\", \"" + discountID.toString() + "\", \"" + waiterID.toString() + "\")");
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

    //usuniecie potrawy z rachunku
    public static void removeFromBillManager(Object billID, Object menuID, Object discountID, int howMany) {
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

    public static void removeFromBill(Object billID, Object menuID, Object discountID, int howMany) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM restaurant.bills "+
                    "WHERE bills.bill_id=" + billID.toString() +
                        " AND bills.menu_id=" + menuID.toString() +
                        " AND bills.discount_id=" + discountID.toString() +
                        " AND (bills.status IS NULL OR bills.status=\"waiting\")" +
                    " LIMIT " + String.valueOf(howMany));
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    //wyswietla rachunki z danego stolika w formie listy
    public static ArrayList billsListFromTable(Object tableID) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `tables` "
                    + "WHERE `table_id`=" + tableID.toString());
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

    //powiazanie stolika z rachunkiem
    public static void addBillToTable(Object tableID, Object billID) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO `tables` (`table_id`, `bill_id`) "
                + "VALUES "
                + "(\"" + tableID.toString() + "\", \"" + billID.toString() + "\")");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    //usuniecie powiazania rachunku ze stolikiem
    public static void removeBillFromTable(Object tableID, Object billID) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM `tables` "
                + "WHERE `table_id`=" + tableID.toString() + " AND `bill_id`=" + billID.toString());
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    //sprawdzenie kto obsluguje dany stolik
    public static Object checkWhoServesTable(Object tableID) {
        Object waiterID = null;
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT `tables`.`table_id`, `bills`.`bill_id`, `bills`.`waiter_id` AS `waiter_id` " +
                    " FROM `tables` LEFT JOIN `bills` ON `tables`.`bill_id`=`bills`.`bill_id` "
                    + "WHERE `tables`.`table_id`=" + tableID.toString() + " LIMIT 1");
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

    //Sprawdzenie, jaki status ma potrawa z danego menu
    public static String menuCheckStatus(Object menu_id) {
        String ret = null;
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM menu "
                    + "WHERE id=" + menu_id.toString());
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

    //status: ok, low, nok, wyswiwetla potrawy o danym statusie
    public static ArrayList menuCheckWhichHaveStatus(String status) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT menu_id, COUNT(*) as number FROM bills "
                    + " WHERE status=\"" + status + "\""
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

    // ustawia status w billu o id (nie bill_id) podanym w parametrach
    public static void billSetStatus(Object id, String status) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("UPDATE bills "
                + "SET status=\"" + status + "\""
                + "WHERE id=" + id.toString());
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static boolean billCheckIfAllServed(Object bill_id) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM bills " +
                    "WHERE bill_id=" + bill_id.toString());
            while (rs.next()) {
                if (!rs.getString("status").equals("served")) return false;
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        return true;
    }

    public static void billWholeSetStatus(Object bill_id, String status) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("UPDATE `bills` "
                + "SET `status`=\"" + status + "\""
                + "WHERE `bill_id`=" + bill_id.toString() + " AND `status` IS NULL");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    //ustawienie statusu dla danej potrawy
    public static void menuSetStatus(Object menu_id, String status) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("UPDATE menu "
                + "SET status=\"" + status + "\""
                + "WHERE id=" + menu_id.toString());
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    //dodanie pozycji do menu
    public static void menuAddItem(String name, double price, String category) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO menu (name, price, category) "
                + "VALUES "
                + "(\"" + name + "\", \"" + String.valueOf(price) + "\", \"" + category + "\")");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    //usuniecie pozycji z menu
    public static void menuRemoveItem(Object menu_id) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM menu "
                + "WHERE id=" + menu_id.toString());
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    //dodanie pracownika
    public static void employeeAdd(String name, String surname, String function) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO employees (name, surname, function) "
                + "VALUES "
                + "(\"" + name + "\", \"" + surname + "\", \"" + function + "\")");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    //usuniecie pracownika
    public static void employeeRemove(Object employee_id) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM employees "
                + "WHERE id=" + employee_id.toString());
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    //dodanie znizki
    public static void discountAdd(String description, int percentage) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO discounts (description, percentage) "
                + "VALUES "
                + "(\"" + description + "\", \"" + String.valueOf(percentage) + "\")");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    //usuniecie znizki
    public static void discountRemove(Object discount_id) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM discounts "
                + "WHERE id=" + discount_id.toString());
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    //wyswietlnie ile rachunkow obsluzyl dany kelner
    public static ArrayList statisticsBillsFromWaiter(Object waiter_id) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM bills " +
                    "WHERE waiter_id=" + waiter_id.toString() +
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

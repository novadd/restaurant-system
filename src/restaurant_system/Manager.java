/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package restaurant_system;
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Szparag
 */
public class Manager extends Engine {

    //dodanie znizki
    /**
     *
     * @param description
     * @param percentage
     */

    public static void discountAdd(String description, int percentage) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO `discounts` (`description`, `percentage`) "
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
    /**
     *
     * @param discount_id
     */
    public static void discountRemove(Object discount_id) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM `discounts` "
                + " WHERE `id`=" + discount_id.toString());
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    public static ArrayList managerBillsShow() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT `bills`.`id` AS `id`, `bills`.`bill_id` AS `bill_id`, `menu`.`name` AS `menu_name`, `discounts`.`percentage` AS `discount_percentage`, `employees`.`surname` AS `waiter`, `bills`.`status` AS `status` " +
                    " FROM `bills` " +
                    " LEFT JOIN `menu` ON `bills`.`menu_id`=`menu`.`id` " +
                    " LEFT JOIN `discounts` ON `bills`.`discount_id`=`discounts`.`id` " +
                    " LEFT JOIN `employees` ON `bills`.`waiter_id`=`employees`.`id` ");
            while (rs.next()) {
                list.add(rs.getString("id") + ": " + rs.getString("bill_id") + ", " + rs.getString("menu_name") + ", " + rs.getString("discount_percentage") + "%, " + rs.getString("waiter") + ", " + rs.getString("status"));
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

    public static ArrayList managerBillsShowID(){
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `bills`");
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

    public static void managerBillsRemove(Object ID) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM `restaurant`.`bills` "+
                    "WHERE `bills`.`id`=" + ID.toString());
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }

        // musi usunac powiazanie stolika
        close(conn);
    }

    /**
     * dodanie pozycji do menu
     * @param name
     * @param price
     * @param category
     */
    public static void menuAddItem(String name, java.math.BigDecimal price, String category) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO `menu` (`name`, `price`, `category`) "
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
    /**
     *
     * @param menu_id
     */
    public static void menuRemoveItem(Object menu_id) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM `menu` "
                + "WHERE `id`=" + menu_id.toString());
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    //dodanie pracownika
    /**
     *
     * @param name
     * @param surname
     * @param function
     */
    public static void employeeAdd(String name, String surname, String function) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO `employees` (`name`, `surname`, `function`) "
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
    /**
     *
     * @param employee_id
     */
    public static void employeeRemove(Object employee_id) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM `employees` "
                + "WHERE `id`=" + employee_id.toString());
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    /**
     * usuniecie potrawy z rachunku
     * @param billID
     * @param menuID
     * @param discountID
     * @param howMany
     */
    public static void removeFromBillManager(Object billID, Object menuID, Object discountID, int howMany) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM `restaurant`.`bills` "+
                    "WHERE `bills`.`bill_id`=" + billID.toString() + " AND `bills`.`menu_id`=" + menuID.toString() + " AND `bills`.`discount_id`=" + discountID.toString() +
                    " LIMIT " + String.valueOf(howMany));

            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    /**
     * wyswietlnie ile rachunkow obsluzyl dany kelner
     * @param waiter_id
     * @return
     */
    public static ArrayList statisticsBillsFromWaiter(Object waiter_id) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `bills` " +
                    " WHERE `waiter_id`=" + waiter_id.toString() +
                    " GROUP BY `bill_id`");
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

















    /**
     *
     * @param status
     * @return
     */
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
                    " ORDER BY `bills`.`id` ASC");
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

    /**
     *
     * @param status
     * @return
     */
    public static ArrayList printBillIDByStatus(String status) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT `bills`.`id`" +
                    " FROM `bills` " +
                    " WHERE `bills`.`status`=\"" + status + "\"" +
                    " ORDER BY `bills`.`id` ASC");
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

    /**
     *
     * @param status
     * @return
     */
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
                    " ORDER BY `bills`.`id` ASC");
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

    /**
     * ustawia status w billu o id (nie bill_id) podanym w parametrach
     * @param id
     * @param status
     */
    public static void billSetStatus(Object id, String status) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("UPDATE `bills` "
                + "SET `status`=\"" + status + "\""
                + "WHERE `id`=" + id.toString());
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    /**
     * status: ok, low, nok, wyswiwetla potrawy o danym statusie
     * @param status
     * @return
     */
    public static ArrayList menuCheckWhichHaveStatus(String status) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT `name` FROM `menu` "
                    + " WHERE `status`=\"" + status + "\"");
            while (rs.next()) {
                list.add(rs.getString("name"));
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

    /**
     *
     * @param status
     * @return
     */
    public static ArrayList menuIDCheckWhichHaveStatus(String status) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT `id` FROM `menu` "
                    + " WHERE `status`=\"" + status + "\"");
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

    /**
     * ustawienie statusu dla danej potrawy
     * @param menu_id
     * @param status
     */
    public static void menuSetStatus(Object menu_id, String status) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("UPDATE `menu` "
                + "SET `status`=\"" + status + "\""
                + "WHERE `id`=" + menu_id.toString());
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    /**
     *
     * @param status
     */
    public static void menuWholeSetStatus(String status) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("UPDATE `menu` "
                + "SET `status`=\"" + status + "\"");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }
















    /**
     * cennik potraw
     * @return
     */
    public static Object[] menuList() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `menu` WHERE `menu`.`status`=\"ok\" or `menu`.`status`=\"low\"");
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

     /**
     * id kolejnych potraw z cennika
     * @return
     */
    public static Object[] menuListID() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `menu`  WHERE `menu`.`status`=\"ok\" or `menu`.`status`=\"low\"");
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


    public static Object[] discountsList() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `discounts`");
            while (rs.next()) {
                list.add(rs.getString("description") + " (" + rs.getString("percentage") + "%)");
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

    public static Object[] discountsIDList() {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `discounts`");
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

    /**
     *
     * @param table_id
     */
    public static void tableCheckForBills(Object table_id) {
    //sprawdzenie, czy po usunieciu zostaly jakies rekordy, jesli nie, to usuwa powiazanie stolika z bill
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT `tables`.`bill_id` FROM `tables` " +
                    " LEFT JOIN `bills` ON `tables`.`bill_id`=`bills`.`bill_id` " +
                    " WHERE `bills`.`bill_id` IS NULL LIMIT 1");
            if (rs.next()) {
                String bill_id = rs.getString("bill_id");
                statement.close();
                statement = conn.createStatement();
                statement.executeUpdate("DELETE FROM `restaurant`.`tables` "+
                    "WHERE `tables`.`bill_id`=" + bill_id);
            }
            rs.close();
            statement.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    /**
     * wyswietlenie podsumowania rachunku
     * @param billID
     * @return
     */
    public static ArrayList printBill(Object billID) {
        ArrayList list = new ArrayList();
        Double sum=0.0;
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT `menu`.`name`, `menu`.`price`, `discounts`.`percentage`, COUNT( * ) AS `number` " +
                    " FROM `bills` " +
                    " LEFT JOIN `discounts` ON `discounts`.`id` = `bills`.`discount_id` " +
                    " LEFT JOIN `menu` ON `bills`.`menu_id` = `menu`.`id` " +
                    " WHERE `bills`.`bill_id` = " + billID.toString() +
                    " GROUP BY `bills`.`menu_id`, `bills`.`discount_id` ");
            while (rs.next()) {
                list.add(rs.getString("number") + "x " + rs.getString("name") + " (" + Math.round(rs.getFloat("price") * (100-rs.getInt("percentage")))/100.0 + " zł)");
                sum=(double)sum + (rs.getDouble("price") * (rs.getInt("number")) * (100-rs.getInt("percentage")/100.0) );
            }
            rs.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
        list.add("Sum: " + Math.round(sum*100)/100.0 + " zł");
        return list;
    }

    public static ArrayList printBillDiscountID(Object billID) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT `bills`.`discount_id` " +
                    " FROM `bills` " +
                    //" LEFT JOIN `menu` ON `bills`.`menu_id` = `menu`.`id` " +
                    //" WHERE `bills`.`bill_id` = " + billID.toString() +
                    " GROUP BY `bills`.`menu_id`, `bills`.`discount_id` ");
            while (rs.next()) {
                list.add(rs.getInt("discount_id"));
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

    /**
     * id kolejnych potraw z danego rachunku
     * @param billID
     * @return
     */
    public static ArrayList printBillMenuID(Object billID) {
        ArrayList list = new ArrayList();
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT `bills`.`menu_id` " +
                    " FROM `bills` " +
                    //" LEFT JOIN `menu` ON `bills`.`menu_id` = `menu`.`id` " +
                    " WHERE `bills`.`bill_id` = " + billID.toString() +
                    " GROUP BY `bills`.`menu_id`, `bills`.`discount_id` ");
            while (rs.next()) {
                list.add(rs.getInt("menu_id"));
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

     /**
     * dodanie potrawy do rachunku
     * @param billID
     * @param menuID
     * @param discountID
     * @param waiterID
     * @param howMany
     * @return
     */
    public static Object addToBill(Object billID, Object menuID, Object discountID, Object waiterID, int howMany) {
        Connection conn = connect();
        if (billID!=null) {
            try {
                Statement statement = conn.createStatement();
                String query;
                String data;
                query = "INSERT INTO `bills` (`bill_id`, `menu_id`, `discount_id`, `waiter_id`) VALUES ";
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
                ResultSet rs = statement.executeQuery("SELECT MAX(bill_id) AS `max` FROM `bills`");
                if (rs.next()) {
                    billID=(rs.getInt("max") + 1);
                } else {
                    billID="0";
                }
                statement.executeUpdate("INSERT INTO `bills` (`bill_id`, `menu_id`, `discount_id`, `waiter_id`) "
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

     /**
     * powiazanie stolika z rachunkiem
     * @param tableID
     * @param billID
     */
    public static void addBillToTable(Object tableID, Object billID) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO `tables` (`table_id`, `bill_id`) "
                + "VALUES "
                + "(" + tableID.toString() + ", " + billID.toString() + ")");
            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }

    /**
     * sprawdzenie kto obsluguje dany stolik
     * @param tableID
     * @return
     */
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

     /**
     * wyswietla rachunki z danego stolika w formie listy
     * @param tableID
     * @return
     */
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

    public static boolean checkIfMealReadyOnTable(Object table_id) {
        boolean ret = false;
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * " +
                    " FROM `bills` " +
                    " LEFT JOIN `tables` ON `bills`.`bill_id`=`tables`.`bill_id` " +
                    " WHERE `tables`.`table_id`=" + table_id.toString() +
                    " AND `bills`.`status`=\"ready\"");
            if (rs.next()) {
                ret = true;
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

    /**
     *
     * @param bill_id
     * @return
     */
    public static boolean billCheckIfAllServed(Object bill_id) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `bills` " +
                    "WHERE `bill_id`=" + bill_id.toString());
            while (rs.next()) {
                if (rs.getString("Status")==null || !rs.getString("status").equals("served")) return false;
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

    /**
     *
     * @param bill_id
     * @param status
     */
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

    /**
     * usuniecie powiazania rachunku ze stolikiem
     * @param tableID
     * @param billID
     */
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

    /**
     *
     * @param list
     */
    public static void printReceipt(ArrayList list) {
        try{
            java.io.FileWriter fstream = new java.io.FileWriter("receipts.txt",true);
            java.io.BufferedWriter out = new java.io.BufferedWriter(fstream);
            java.util.Iterator it = list.iterator();

            java.util.Date todaysDate = new java.util.Date();
            java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
            String formattedDate = formatter.format(todaysDate);
            out.write(formattedDate);
            out.newLine();

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

    /**
     *
     * @param billID
     * @param menuID
     * @param discountID
     * @param howMany
     */
    public static void removeFromBill(Object billID, Object menuID, Object discountID, int howMany) {
        Connection conn = connect();
        try {
            Statement statement = conn.createStatement();
            statement.executeUpdate("DELETE FROM `restaurant`.`bills` "+
                    "WHERE `bills`.`bill_id`=" + billID.toString() +
                        " AND `bills`.`menu_id`=" + menuID.toString() +
                        " AND `bills`.`discount_id`=" + discountID.toString() +
                        " AND (`bills`.`status` IS NULL OR `bills`.`status`=\"waiting\")" +
                    " LIMIT " + String.valueOf(howMany));

            statement.close();
            conn.close();
        } catch (Exception e) {
                e.printStackTrace();
        }
        close(conn);
    }
}

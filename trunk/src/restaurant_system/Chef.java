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
public class Chef extends Engine {
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
}

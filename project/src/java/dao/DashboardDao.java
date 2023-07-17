/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.BranchBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

/**
 *
 * @author frei-
 */
public class DashboardDao {
    public static int getTotalStaff() {
        BranchBean branch = null;
        Connection con = null;
        Statement statement = null;
        int totalStaff = 0;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            ResultSet rs = statement.executeQuery("SELECT COUNT(*) FROM STAFF");
            rs.next();
            totalStaff = rs.getInt(1);
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return totalStaff;
    }
}

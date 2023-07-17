/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.TrackingStatusBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

/**
 *
 * @author LENOVO
 */
public class TrackingStatusDao {

    public static boolean addtrackingstatus(TrackingStatusBean addtrackingstatusBean) {

        Connection con = null;
        PreparedStatement statement = null;
        try {
            con = DBConnection.createConnection();
            statement = con.prepareStatement("insert into ITEM_BRANCH(ITEMID, BRANCHID, STATUS, VEHICLE, DATETIME) VALUES (?, ?, ?, ?, ?)");
            statement.setInt(1, addtrackingstatusBean.getItemId());
            statement.setInt(2, addtrackingstatusBean.getBranchId());
            statement.setString(3, addtrackingstatusBean.getStatus());
            statement.setInt(4, addtrackingstatusBean.getVehicleId());
            statement.setTimestamp(5, addtrackingstatusBean.getDateTime());

            statement.executeUpdate();

            return true;

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

        return false;
    }

}

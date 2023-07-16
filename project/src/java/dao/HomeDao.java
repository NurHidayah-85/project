/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.BranchBean;
import bean.ItemBranchBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import util.DBConnection;

/**
 *
 * @author LENOVO
 */
public class HomeDao {

    public static List<ItemBranchBean> getItemBranchesByItemId(int itemId) {

        List<ItemBranchBean> itemBranches = new ArrayList<>();
        Connection con = null;
        Statement statement = null;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM ITEM_BRANCH WHERE ITEMID=" + itemId);
            while (rs.next()) {
                Statement statementBranch = null;
                try {
                    statementBranch = con.createStatement();
                    ResultSet branchRs = statementBranch.executeQuery("SELECT * FROM BRANCH WHERE BRANCHID=" + rs.getInt("BRANCHID"));

                    if (branchRs.next()) {
                        int ibid = rs.getInt("IBID");
                        Timestamp datetime = rs.getDateTime();
                        String status = rs.getString("STATUS");
                        int itemid = rs.getInt("ITEMID");
                        int branchid = branchRs.getInt("BRANCHID");
                        String location = branchRs.getString("LOCATION");
                        String poscode = branchRs.getString("POSCODE");
                        int vehicleid = rs.getInt("VEHICLEID");

                        itemBranches.add(new ItemBranchBean(
                                rs.getInt("IBID"),
                                 rs.getTimestamp("DATETIME"),
                                 rs.getString("STATUS"),
                                 rs.getInt("ITEMID"),
                                 new BranchBean(branchRs.getInt("BRANCHID"),
                                         branchRs.getString("LOCATION"),
                                         branchRs.getString("POSCODE")),
                                 rs.getInt("VEHICLEID")
                        ));
                    }
                } catch (SQLException ex) {
                    ex.printStackTrace();
                } finally {
                    try {
                        if (statementBranch != null) {
                            statementBranch.close();
                        }
                    } catch (SQLException ex) {
                        ex.printStackTrace();
                    }
                }
            }
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

        return itemBranches;
    }
}

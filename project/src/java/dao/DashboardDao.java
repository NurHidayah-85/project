/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.BranchBean;
import bean.ItemBranchBean;
import bean.StaffBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

/**
 *
 * @author 
 */
public class DashboardDao {
    public static int getTotalStaff() {
       
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
    
     public static int getTotalDelivery() {
        
        Connection con = null;
        Statement statement = null;
        int totalDelivery = 0;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            ResultSet rs = statement.executeQuery("SELECT COUNT(*) FROM ANC.ITEM_BRANCH");
            rs.next();
            totalDelivery  = rs.getInt(1);
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

        return totalDelivery ;
    }
     
     
     public static double getTotalIncome() {
        
        Connection con = null;
        Statement statement = null;
        double totalIncome = 00.00;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            ResultSet rs = statement.executeQuery("SELECT SUM(FEE) FROM ANC.ITEM");
            rs.next();
            totalIncome  = rs.getDouble(1);
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

        return totalIncome;
    }
    
    
     
     public static int getTotalPending() {
        
        Connection con = null;
        Statement statement = null;
        int totalPending = 0;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            ResultSet rs = statement.executeQuery("SELECT COUNT(STATUS) FROM ANC.ITEM_BRANCH WHERE STATUS = 'Item processed'");
            rs.next();
            totalPending  = rs.getInt(1);
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

        return totalPending;
    }
    
    
    
    
    
}

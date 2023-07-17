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
            ResultSet rs2 = statement.executeQuery("SELECT COUNT(*) FROM ITEM_BRANCH");
            rs2.next();
            totalDelivery  = rs2.getInt(1);
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
            ResultSet rs3 = statement.executeQuery("SELECT SUM(FEE) FROM ITEM");
            rs3.next();
            totalIncome  = rs3.getDouble(1);
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
            ResultSet rs4 = statement.executeQuery("SELECT COUNT(STATUS) FROM ITEM_BRANCH WHERE STATUS = 'Item processed'");
            rs4.next();
            totalPending  = rs4.getInt(1);
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

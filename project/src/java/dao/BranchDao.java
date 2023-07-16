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
import java.util.ArrayList;
import java.util.List;
import util.DBConnection;

/**
 *
 * @author LENOVO
 */
public class BranchDao {

    public static boolean addbranch(BranchBean addbranchBean) {

        Connection con = null;
        Statement statement = null;
        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            int result = statement.executeUpdate("insert into BRANCH (LOCATION, POSCODE) "
                    + "VALUES ('" + addbranchBean.getLocation() + "', "
                    + addbranchBean.getPoscode() + ")");

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

    public static boolean deleteBranch(int branchId) {
        Connection con = null;
        Statement statement = null;
        boolean isDeleteSuccessful = true;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            statement.executeUpdate("DELETE FROM BRANCH "
                    + "WHERE BRANCHID=" + branchId);
        } catch (SQLException ex) {
            ex.printStackTrace();
            isDeleteSuccessful = false;
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

        return isDeleteSuccessful;
    }

    public static BranchBean getBranch(int branchId) {
        BranchBean branch = null;
        Connection con = null;
        Statement statement = null;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM BRANCH "
                    + "WHERE BRANCHID=" + branchId);
            
            if (rs.next()) {
                branch = new BranchBean(branchId, rs.getString("LOCATION"), rs.getInt("POSCODE"));
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

        return branch;
    }

    public static boolean updateBranch(BranchBean branch) {
        Connection con = null;
        Statement statement = null;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            statement.executeUpdate("UPDATE BRANCH SET "
                    + "LOCATION='" + branch.getLocation() + "', "
                    + "POSCODE=" + branch.getPoscode() + " "
                    + "WHERE BRANCHID=" + branch.getBranchId());
            
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

    public static List<BranchBean> getBranches() {
        List<BranchBean> branches = new ArrayList<>();
        Connection con = null;
        Statement statement = null;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM BRANCH");
            
            while (rs.next()) {
                branches.add(new BranchBean(rs.getInt("BRANCHID"), rs.getString("LOCATION"), rs.getInt("POSCODE")));
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

        return branches;
    }
}

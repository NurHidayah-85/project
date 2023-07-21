/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.VehicleBean;
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
public class RegisterVehicleDao {
    
  public static boolean addvehicle(VehicleBean addvehicleBean) {

     Connection con = null;
        Statement statement = null;
        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            int result = statement.executeUpdate("insert into VEHICLE (VEHICLETYPE, NOPLATE) "
                    + "VALUES ('" + addvehicleBean.getVehicletype() + "', '"
                    + addvehicleBean.getNoplate() +  "')");

            return true;

        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (con != null)
                    con.close();
                if (statement != null)
                    statement.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return false;
    }

 public static boolean deleteVehicle(int vehicleid) {
        Connection con = null;
        Statement statement = null;
        boolean isDeleteSuccessful = true;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            statement.executeUpdate("DELETE FROM VEHICLE "
                    + "WHERE VEHICLEID=" + vehicleid);
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

    public static VehicleBean getVehicle(int vehicleid) {
        VehicleBean vehicle = null;
        Connection con = null;
        Statement statement = null;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM VEHICLE"
                    + "WHERE VEHICLEID=" + vehicleid);
            
            if (rs.next()) {
               vehicle = new VehicleBean(vehicleid, rs.getString("VEHICLETYPE"), rs.getString("NOPLATE"));
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

        return vehicle;
    }

    public static boolean updateVehicle(VehicleBean vehicle) {
        Connection con = null;
        Statement statement = null;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            statement.executeUpdate("UPDATE VEHICLE SET "
                    + "VEHICLETYPE='" + vehicle.getVehicletype() + "', "
                    + "NOPLATE=" + vehicle.getNoplate() + " ");
            
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

    public static List<VehicleBean> getVehicles() {
        List<VehicleBean> vehicles = new ArrayList<>();
        Connection con = null;
        Statement statement = null;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM VEHICLE");
            
            while (rs.next()) {
                vehicles.add(new VehicleBean(rs.getInt("VEHICLEID"), rs.getString("VEHICLETYPE"), rs.getString("NOPLATE")));
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

        return vehicles;
    }
}


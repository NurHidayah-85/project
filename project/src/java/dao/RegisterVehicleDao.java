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
import util.DBConnection;
/**
 *
 * @author LENOVO
 */
public class RegisterVehicleDao {
    
  public String addvehicle(VehicleBean addvehicleBean) {

     Connection con = null;
        Statement statement = null;
        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            int result = statement.executeUpdate("insert into VEHICLE (VEHICLETYPE, NOPLATE) "
                    + "VALUES ('" + addvehicleBean.getVehicletype() + "', '"
                    + addvehicleBean.getNoplate() +  "')");

            return "SUCCESS";

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

        return "Invalid to add";
    }

}

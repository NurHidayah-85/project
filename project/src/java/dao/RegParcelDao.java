/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.RegInformationBean;
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
public class RegParcelDao {

    public static boolean reginfo(RegInformationBean reginfoBean) {
        Connection con = null;
        Statement statement = null;
        PreparedStatement prepStatement = null;
        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            int result = statement.executeUpdate("insert into CUSTOMERSENDER ( CUSTNAME, CUSTPHONE, CUSTADD, CUSTPOSCODE, CUSTEMAIL) "
                    + "VALUES ('" + reginfoBean.getCustsname() + "', "
                    + reginfoBean.getCustsphone() + ", '"
                    + reginfoBean.getCustsadd() + "', "
                    + reginfoBean.getCustsposcode() + ", '"
                    + reginfoBean.getCustsemail() + "')");

            int result2 = statement.executeUpdate("insert into CUSTOMERRECEIVE ( CUSTNAME, CUSTPHONE, CUSTADD, CUSTPOSCODE, CUSTEMAIL) "
                    + "VALUES ('" + reginfoBean.getCustrname() + "', "
                    + reginfoBean.getCustrphone() + ", '"
                    + reginfoBean.getCustradd() + "', "
                    + reginfoBean.getCustrposcode() + ", '"
                    + reginfoBean.getCustremail() + "')");

            prepStatement = con.prepareStatement("insert into ITEM ( WEIGHT, HEIGHT, FEE, SHIPTYPE, STAFFID, CUSTRID, CUSTSID) VALUES (?, ?, ?, ?, ?, ?, ?)");
            prepStatement.setDouble(1, reginfoBean.getWeight());
            prepStatement.setDouble(2, reginfoBean.getHeight());
            prepStatement.setDouble(3, reginfoBean.getFee());
            prepStatement.setString(4, "" + reginfoBean.getShiptype());
            prepStatement.setInt(5, reginfoBean.getStaffid());
            prepStatement.setInt(6, reginfoBean.getCustrid());
            prepStatement.setInt(7, reginfoBean.getCustsid());
            prepStatement.executeUpdate();

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
                if (prepStatement != null) {
                    prepStatement.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return false;
    }

}

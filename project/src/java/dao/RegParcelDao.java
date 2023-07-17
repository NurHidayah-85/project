/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import bean.RegInformationBean;
import java.sql.Connection;
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
        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            int result = statement.executeUpdate("insert into CUSTOMERSENDER ( CUSTNAME, CUSTPHONE, CUSTADD, CUSTPOSCODE, CUSTEMAIL) "
                    + "VALUES ('" + reginfoBean.getCustsname() + "', '"
                     + reginfoBean.getCustsphone() + ", '"
                    + reginfoBean.getCustsadd() + "', '"
                    + reginfoBean.getCustsposcode() + "', '"
                    + reginfoBean.getCustsemail() + "')");
            
            int result2 = statement.executeUpdate("insert into CUSTOMERRECEIVE ( CUSTNAME, CUSTPHONE, CUSTADD, CUSTPOSCODE, CUSTEMAIL) "
                    + "VALUES ('" + reginfoBean.getCustrname() + "', '"
                     + reginfoBean.getCustrphone() + ", '"
                    + reginfoBean.getCustradd() + "', '"
                    + reginfoBean.getCustrposcode() + "', '"
                    + reginfoBean.getCustremail() + "')");

            int result3 = statement.executeUpdate("insert into ITEM ( WEIGHT, HEIGHT, SHIPTYPE, STAFFID, CUSTRID, CUSTSID) "
                    + "VALUES ('" + reginfoBean.getWeight() + "', '"
                     + reginfoBean.getHeight() + ", '"
                     + reginfoBean.getShiptype() + "', '"
                     + reginfoBean.getStaffid() + "', '"
                     + reginfoBean.getCustrid() + "', '"
                    + reginfoBean.getCustsid() + "')");
             
    
   
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

}

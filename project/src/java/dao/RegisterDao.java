/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.StaffBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

/**
 *
 * @author LENOVO
 */
public class RegisterDao {

    public static boolean registerUser(StaffBean registerBean) {
        try {
            Connection con = DBConnection.createConnection();
            Statement statement = con.createStatement();
            int result = statement.executeUpdate("insert into STAFF (STAFFNAME, STAFFPOSITION, STAFFPHONE, STAFFADD, STAFFEMAIL, PASSWORD, USERNAME) "
                    + "VALUES ('" + registerBean.getFullname() + "', '"
                    + registerBean.getPosition() + "', "
                    + registerBean.getPhone() + ", '"
                    + registerBean.getAddress() + "', '"
                    + registerBean.getEmail() + "', '"
                    + registerBean.getPassword() + "', '"
                    + registerBean.getUsername() + "')");

            return true;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return false;
    }

}

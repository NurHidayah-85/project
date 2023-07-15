/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;


import bean.RegisterBean;
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
   
        
     public static boolean registerUser(RegisterBean registerBean) {
        try {
            Connection con = DBConnection.createConnection();
            Statement statement = con.createStatement();
            int result = statement.executeUpdate("insert into name (USERNAME, PASSWORD, FULLNAME, EMAIL) "
                    + "VALUES ('" + registerBean.getUsername() + "', '" + registerBean.getPassword() + "', '" + registerBean.getFullname() + "', '" + registerBean.getEmail() +"')");
            
            return true;
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return false;
    }
    
}

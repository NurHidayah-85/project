/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.HomeBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;


/**
 *
 * @author LENOVO
 */
public class HomeDao {
    public String search(HomeBean homeBean) {
        
         String searching = homeBean.getSearching();
            
            
            Connection con = null;
            Statement statement = null;
            ResultSet resultSet = null;
            String searchingDB = "";
           
            
            
            
            
            try {
                con = DBConnection.createConnection();
                statement = con.createStatement();
                resultSet = statement.executeQuery("select ibid from ITEM_BRANCH");
            while (resultSet.next()) {
                searchingDB = resultSet.getString("ibid");
              
                
                if (searching.equals(searchingDB)) {
                    return "SUCCESS";
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return "No match record in the system";
    }
    
    
}
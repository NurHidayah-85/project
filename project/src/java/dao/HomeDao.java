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
        int itemidDB = 0;

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select ItemID, BranchID , DateTime , Status  from ITEM_BRANCH where ibid='" + searching + "'");

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return "No match record in the system";
    }

}

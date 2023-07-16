/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author LENOVO
 */
public class HomeBean implements java.io.Serializable  {
    
    public String searching;

    public HomeBean() {
    }

    public HomeBean(String searching) {
        this.searching = searching;
    }

    public String getSearching() {
        return searching;
    }

    public void setSearching(String searching) {
        this.searching = searching;
    }
    
    
    
}

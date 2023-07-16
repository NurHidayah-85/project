/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author frei-
 */
public class BranchBean {
    private int branchId;
    private String location;
    private String poscode;

    public BranchBean() {}
    
    public BranchBean(int branchId, String location, String poscode) {
        this.branchId = branchId;
        this.location = location;
        this.poscode = poscode;
    }

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getPoscode() {
        return poscode;
    }

    public void setPoscode(String poscode) {
        this.poscode = poscode;
    }
    
    
}

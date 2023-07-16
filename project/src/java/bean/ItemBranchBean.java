/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.Timestamp;

/**
 *
 * @author LENOVO
 */
public class ItemBranchBean implements java.io.Serializable  {
    
    private int iBID;
    private Timestamp dateTime;
    private String status;
    private int itemId;
    private BranchBean branch;
    private int vehicleId;
    
    public ItemBranchBean() {}

    public ItemBranchBean(int iBID, Timestamp dateTime, String status, int itemId, BranchBean branch, int vehicleId) {
        this.iBID = iBID;
        this.dateTime = dateTime;
        this.status = status;
        this.itemId = itemId;
        this.branch = branch;
        this.vehicleId = vehicleId;
    }

    public int getiBID() {
        return iBID;
    }

    public void setiBID(int iBID) {
        this.iBID = iBID;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public BranchBean getBranch() {
        return branch;
    }

    public void setBranch(BranchBean branch) {
        this.branch = branch;
    }

    public int getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(int vehicleId) {
        this.vehicleId = vehicleId;
    }
}

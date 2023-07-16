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
public class TrackingStatusBean {
    
    private int ibId;
    private int itemId;
    private int branchId;
    private Timestamp dateTime;
    private String status;
    private int vehicleId;

    public TrackingStatusBean() {
    }

    public TrackingStatusBean(int itemId, int branchId, Timestamp dateTime, String status, int vehicleId) {
        this.itemId = itemId;
        this.branchId = branchId;
        this.dateTime = dateTime;
        this.status = status;
        this.vehicleId = vehicleId;
    }

    public int getIbId() {
        return ibId;
    }

    public void setIbId(int ibId) {
        this.ibId = ibId;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
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

    public int getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(int vehicleId) {
        this.vehicleId = vehicleId;
    }
    
    
    
    
}

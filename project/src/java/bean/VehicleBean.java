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
public class VehicleBean implements java.io.Serializable {
    private int vehicleid;
    private String vehicletype;
    private String noplate;
    
    public VehicleBean() {
    }


    public VehicleBean(int vehicleid, String vehicletype, String noplate) {
        this.vehicleid = vehicleid;
        this.vehicletype = vehicletype;
        this.noplate = noplate;
    }

    
    public VehicleBean(String vehicletype, String noplate) {
        this.vehicletype = vehicletype;
        this.noplate = noplate;
    }

    public int getVehicleid() {
        return vehicleid;
    }

    public void setVehicleid(int vehicleid) {
        this.vehicleid = vehicleid;
    }

    public String getVehicletype() {
        return vehicletype;
    }

    public void setVehicletype(String vehicletype) {
        this.vehicletype = vehicletype;
    }

    public String getNoplate() {
        return noplate;
    }

    public void setNoplate(String noplate) {
        this.noplate = noplate;
    }
    
    
    
    
    
    
    
}

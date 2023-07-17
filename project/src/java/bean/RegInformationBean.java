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
public class RegInformationBean {
    
    private int custsid;
    private String custsname;
    private int custsphone;
    private String custsadd;
    private int custsposcode;
    private String custsemail;
    
    private int custrid;
    private String custrname;
    private int custrphone;
    private String custradd;
    private int custrposcode;
    private String custremail;
    
    private int itemid;
    private double fee;
    private double weight;
    private double height;
    private double shiptype;
    
    
    private int staffid;

    public RegInformationBean() {
    }

    public RegInformationBean(String custsname, int custsphone, String custsadd, int custsposcode, String custsemail, String custrname, int custrphone, String custradd, int custrposcode, String custremail, double weight, double height, double fee, double shiptype, int staffid) {
        this.custsname = custsname;
        this.custsphone = custsphone;
        this.custsadd = custsadd;
        this.custsposcode = custsposcode;
        this.custsemail = custsemail;
        this.custrname = custrname;
        this.custrphone = custrphone;
        this.custradd = custradd;
        this.custrposcode = custrposcode;
        this.custremail = custremail;
        this.weight = weight;
        this.height = height;
        this.fee = fee;
        this.shiptype = shiptype;
        this.staffid = staffid;
    }

    public RegInformationBean(int custsid, String custsname, int custsphone, String custsadd, int custsposcode, String custsemail, int custrid, String custrname, int custrphone, String custradd, int custrposcode, String custremail, int itemid, double weight, double height,double fee, double shiptype, int staffid) {
        this.custsid = custsid;
        this.custsname = custsname;
        this.custsphone = custsphone;
        this.custsadd = custsadd;
        this.custsposcode = custsposcode;
        this.custsemail = custsemail;
        this.custrid = custrid;
        this.custrname = custrname;
        this.custrphone = custrphone;
        this.custradd = custradd;
        this.custrposcode = custrposcode;
        this.custremail = custremail;
        this.itemid = itemid;
        this.weight = weight;
        this.height = height;
        this.fee = fee;
        this.shiptype = shiptype;
        this.staffid = staffid;
    }

    public int getCustsid() {
        return custsid;
    }

    public void setCustsid(int custsid) {
        this.custsid = custsid;
    }

    public String getCustsname() {
        return custsname;
    }

    public void setCustsname(String custsname) {
        this.custsname = custsname;
    }

    public int getCustsphone() {
        return custsphone;
    }

    public void setCustsphone(int custsphone) {
        this.custsphone = custsphone;
    }

    public String getCustsadd() {
        return custsadd;
    }

    public void setCustsadd(String custsadd) {
        this.custsadd = custsadd;
    }

    public double getFee() {
        return fee;
    }

    public void setFee(double fee) {
        this.fee = fee;
    }

    public int getCustsposcode() {
        return custsposcode;
    }

    public void setCustsposcode(int custsposcode) {
        this.custsposcode = custsposcode;
    }

    public String getCustsemail() {
        return custsemail;
    }

    public void setCustsemail(String custsemail) {
        this.custsemail = custsemail;
    }

    public int getCustrid() {
        return custrid;
    }

    public void setCustrid(int custrid) {
        this.custrid = custrid;
    }

    public String getCustrname() {
        return custrname;
    }

    public void setCustrname(String custrname) {
        this.custrname = custrname;
    }

    public int getCustrphone() {
        return custrphone;
    }

    public void setCustrphone(int custrphone) {
        this.custrphone = custrphone;
    }

    public String getCustradd() {
        return custradd;
    }

    public void setCustradd(String custradd) {
        this.custradd = custradd;
    }

    public int getCustrposcode() {
        return custrposcode;
    }

    public void setCustrposcode(int custrposcode) {
        this.custrposcode = custrposcode;
    }

    public String getCustremail() {
        return custremail;
    }

    public void setCustremail(String custremail) {
        this.custremail = custremail;
    }

    public int getItemid() {
        return itemid;
    }

    public void setItemid(int itemid) {
        this.itemid = itemid;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getShiptype() {
        return shiptype;
    }

    public void setShiptype(double shiptype) {
        this.shiptype = shiptype;
    }

    public int getStaffid() {
        return staffid;
    }

    public void setStaffid(int staffid) {
        this.staffid = staffid;
    }
    
    
    
    
}

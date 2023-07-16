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
public class StaffBean implements java.io.Serializable {
    
    
    private String fullname;
    private String position;
    private int phone;
    private String address;
    private String email;
    private String password;
    private String cpassword;
    private String username;

    public StaffBean() {
    }

    public StaffBean(String fullname, String position, int phone, String address, String email, String password, String username, String cpassword) {
        
        this.fullname = fullname;
        this.position = position;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.password = password;
        this.username = username;
        this.cpassword = cpassword;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCpassword() {
        return cpassword;
    }

    public void setCpassword(String cpassword) {
        this.cpassword = cpassword;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

   
}

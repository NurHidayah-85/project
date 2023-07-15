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
public class RegisterBean implements java.io.Serializable {
    
    public String username;
    public String password;
    public String fullname;
    public String email;
    public String cpassword;

    public RegisterBean() {
    }
    public RegisterBean(String name, String email, String username, String password) {
        this.fullname = fullname;
        this.email = email;
        this.username = username;
        this.password = password;
    }
    
    public void setCpassword(String cpassword) {
        this.cpassword = cpassword;
    }

    public String getCpassword() {
        return cpassword;
    }

    

    public String getFullname() {
        return fullname;
    }

    public String getEmail() {
        return email;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
}

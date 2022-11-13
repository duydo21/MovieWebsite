/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ACER
 */
public class Account {

    int  type;
    String username, password, name, mail, phone;
    double accBalance;

    public Account() {
    }

    public Account(String username, String password, String name) {
        this.username = username;
        this.password = password;
        this.name = name;
    }

    public Account(String username, String password, String name, String mail, String phone) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.mail = mail;
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "User{" + "type=" + type + ", username=" + username + ", password=" + password + ", name=" + name + ", mail=" + mail + ", phone=" + phone + ", accBalance=" + accBalance + '}';
    }

    public Account( int type, String username, String password, String name, 
            String mail, String phone, double accBalance) {
        this.type = type;
        this.username = username;
        this.password = password;
        this.name = name;
        this.mail = mail;
        this.phone = phone;
        this.accBalance = accBalance;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public double getAccBalance() {
        return accBalance;
    }

    public void setAccBalance(double accBalance) {
        this.accBalance = accBalance;
    }

}

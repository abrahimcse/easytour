/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.happyjourney.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Science Fidelity
 */
public class User {
    public String name,email,password,nid,address;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getNid() {
        return nid;
    }

    public void setNid(String nid) {
        this.nid = nid;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public User(String name, String email, String password, String nid, String address) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.nid = nid;
        this.address = address;
    }
   public int InsertUser()
   {
       Connection con;
       PreparedStatement ps;
       int a=0;
     try{
     Class.forName("oracle.jdbc.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","abrahimcse", "1234");
     ps=con.prepareStatement("Insert into users values(?,?,?,?,?)");
     ps.setString(1, name);
     ps.setString(2, email);
     ps.setString(3, password);
     ps.setString(4, nid);
     ps.setString(5, address);
     
     a=ps.executeUpdate();
     
     try{
         Class.forName("oracle.jdbc.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","abrahimcse", "1234");
     ps=con.prepareStatement("Insert into login values(?,?)");
     ps.setString(1, email);
     ps.setString(2, password);
     
     a=ps.executeUpdate();
     return a;
     }catch (Exception ex) {
         
             ex.printStackTrace();
         }
     return a;
     }catch (ClassNotFoundException | SQLException ex) {
           a=1;
       }
   return a;
   }

    
    
    
}

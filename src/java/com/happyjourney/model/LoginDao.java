/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.happyjourney.model;

/**
 *
 * @author Science Fidelity
 */
import java.sql.*;

/**
 *
 * @author Science Fidelity
 */
public class LoginDao {
    public String email,password;

    public LoginDao() {
        this.email = email;
        this.password = password;
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
    
    public boolean check(String email,String password)
    {
        String sql="Select * from login where email=? and password=?";
        try{
        Class.forName("oracle.jdbc.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","abrahimcse", "1234");
        Statement stmt = con.createStatement();
        PreparedStatement st=con.prepareStatement(sql);
        
        st.setString(1,email);
        st.setString(2,password);
        
        ResultSet rs=st.executeQuery();
       if(rs.next())
       {
       return true;
       }
        }
        catch (Exception ex) {
           ex.printStackTrace();
        }
        return false;
    }
    
}
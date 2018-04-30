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
import java.sql.Statement;

/**
 *
 * @author Acer
 */
public class LocationDao {
    public String place1,place2;

    public LocationDao(String place1, String place2) {
       this.place1 = place1;
        this.place2 = place2;
    }

    public LocationDao() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getPlace1() {
        return place1;
    }

    public void setPlace1(String place1) {
        this.place1 = place1;
    }

    public String getPlace2() {
        return place2;
    }

    public void setPlace2(String place2) {
        this.place2 = place2;
    }
    public boolean locationcheck(String place1,String place2)
    {
        String sql="Select * from places where place1=? and place2=?";
        try{
        Class.forName("oracle.jdbc.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","abrahimcse", "1234");
        Statement stmt = con.createStatement();
        PreparedStatement st=con.prepareStatement(sql);
        
        st.setString(1,place1);
        st.setString(2,place2);
        
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.happyjourney.controller;

import com.happyjourney.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Science Fidelity
 */
public class RegistrationValidate extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistrationValidate</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrationValidate at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String name=request.getParameter("Name");
            String email=request.getParameter("Email");
            String password=request.getParameter("Password");
            String cpassword=request.getParameter("Cpassword");
            String nid=request.getParameter("Nid");
            String address=request.getParameter("Address");
            
            List errorList =new LinkedList();
            if(name.length()==0){
            errorList.add("Enter your valid Name");
            }
            if(email.length()==0){
            errorList.add("Enter your valid Email Address");
            }    
            if(password.length()==0){
            errorList.add("Enter your password");
            }
            if(cpassword.compareTo(password)!=0){
            errorList.add("Password not matched");
            }
            if(nid.length()==0){
            errorList.add("Enter your National ID number");
            }
            if(address.length()==0){
            errorList.add("Enter your valid Address");
            }
            
            request.setAttribute("Errors",errorList);
            if(!errorList.isEmpty()){
            RequestDispatcher disp=request.getRequestDispatcher("/Error.view");
            disp.forward(request, response);
            return;
            }
            User user= new User(name,email,password,nid,address);
            request.setAttribute("User", user);
            int a=user.InsertUser();
            
            if(a>0){
            RequestDispatcher disp=request.getRequestDispatcher("/Home.view");
            disp.forward(request, response);
            return;
            }
            else{
            RequestDispatcher disp=request.getRequestDispatcher("/Error.view");
            disp.forward(request, response);
            return;
            }
        }catch (Exception ex) {
            
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

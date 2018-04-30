/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.happyjourney.controller;

import com.happyjourney.model.LoginDao;
import com.happyjourney.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


/**
 *
 * @author Science Fidelity
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    public Login(){
    super();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           String email=request.getParameter("email");
        String password=request.getParameter("password");
                
        LoginDao ld=new LoginDao();
        if(ld.check(email, password))
        {
        HttpSession session=request.getSession();
        session.setAttribute("email",email);
        session.setAttribute("password",password);
        response.sendRedirect("welcome.jsp");
        }
        else
        {
        response.sendRedirect("login.jsp");
        }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        
       LoginDao ld=new LoginDao();
        
        if(ld.check(email,password))
        {
        HttpSession session=request.getSession();
        session.setAttribute("email",email);
        session.setAttribute("password",password);
        
        response.sendRedirect("welcome.jsp");
        }
        else
        {
        response.sendRedirect("login.jsp");
        }
    }
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

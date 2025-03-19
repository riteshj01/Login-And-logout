package com.servlet;

import com.dao.userdao;
import com.db.dbconnect;
import com.intialize.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/loginServlet")
public class servletlogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String pass =req.getParameter("password");
        userdao user = new userdao(dbconnect.getConnection());
        User us = user.getlogin(email,pass);
        if(us!=null){
            HttpSession tp = req.getSession();
            tp.setAttribute("user-ob",us);
            resp.sendRedirect("home.jsp");
        }else{
            HttpSession tp = req.getSession();
            tp.setAttribute("error-msg","Invalid Email & Password");
            resp.sendRedirect("login.jsp");
        }

    }
}

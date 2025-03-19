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

@WebServlet("/dataInsert")
public class servlet1 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name= req.getParameter("uname");
        String email=req.getParameter("email");
        String password = req.getParameter("password");
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        userdao dao= new userdao(dbconnect.getConnection());
        boolean f=dao.register(user);
        if(f){
            HttpSession httpSession = req.getSession();
            httpSession.setAttribute("reg-msg","Register Successfully");
            resp.sendRedirect("register.jsp");
        }else{
            HttpSession httpSession = req.getSession();
            httpSession.setAttribute("reg-error","Register Failed ");
            resp.sendRedirect("register.jsp");

        }


    }
}

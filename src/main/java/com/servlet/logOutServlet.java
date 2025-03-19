package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/logOutServlet")
public class logOutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession ht = req.getSession();
        ht.removeAttribute("user-ob");
        HttpSession session2= req.getSession();
        ht.setAttribute("logout-msg","logout successfully...");
        resp.sendRedirect("login.jsp");



    }
}

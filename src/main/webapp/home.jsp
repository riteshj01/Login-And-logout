<!DOCTYPE html>
<%@page import="com.intialize.User"%>
<%@page import="jakarta.servlet.http.HttpServletResponse"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% User user1 =(User)session.getAttribute("user-ob");
if(null == user1){

session.setAttribute("login-msg","login first..");
response.sendRedirect("login.jsp");
}
%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet"  href="<%= application.getContextPath() %>/css/index.css"/>

</head>
<body>
<%@include file="navbar.jsp"%>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<div class="container">
    <div class=" row d-flex justify-content-center align-item-center mt-4">
    <div class="col-md-6">
    <div class="card">
        <%
        User user = (User)session.getAttribute("user-ob");
        %>
        <% if(user1 != null) { %>
        <div class="card-body">
            <h1>Name:<%= user.getName()%></h1>
            <h2>Email:<%= user.getEmail()%></h2>
            <div class=" container text-center">
                <a class="btn btn-primary btn-lg text-white " href="logOutServlet"> Logout</a>

    </div>
</div> <% } %>
        </div>
        </div>
        </div>
        </div>



</body>
</html>
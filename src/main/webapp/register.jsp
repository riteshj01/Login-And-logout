
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet"  href="<%= application.getContextPath() %>/css/index.css"/>
  </head>
  <body>
  <%@include file="navbar.jsp"%>
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   <div class ="container">
     <div class ="row mt-3">
     <div class ="col-md-4 offset-md-4">
     <div class ="card c-head">
     <div class ="card-header text-center ">
     <i class ="fa fa-user-circle-o fa-2x"></i>
     <h5>Register Page</h5>

     </div>
     <%-- Scriptlet (Java Code Inside JSP) --%>
     <% String msg= (String)session.getAttribute("reg-msg");
     if(msg!=null){ %>
     <div class="alert alert-success" role="alert"><%=msg  %>Login..<a href ="login.jsp"> Click here  </a> </div>

     <% } %>
     <div class="card-body">
     <form action="dataInsert" method="post">
     <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Enter full Name</label>
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="uname">
            </div>
       <div class="mb-3">
         <label for="exampleInputEmail1" class="form-label"> Enter Email </label>
         <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
       </div>
       <div class="mb-3">
         <label for="exampleInputPassword1" class="form-label">Password</label>
         <input type="password" class="form-control" id="exampleInputPassword1" name="password">
       </div>

       <button type="submit" class="btn btn-primary">Register</button>
     </form>


     </div>
     </div>

  </body>
  </html>
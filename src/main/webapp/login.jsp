
<%@page import="java.sql.Connection"%>

<!doctype html>
<%@page import="com.db.dbconnect"%>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login page</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet"  href="<%= application.getContextPath() %>/css/index.css"/>
  </head>
  <body>
  <%@include file="navbar.jsp"%>

   <div class ="container">
       <div class ="row mt-3">
       <div class ="col-md-4 offset-md-4">
       <div class ="card c-head">
       <div class ="card-header text-center ">
       <i class ="fa fa-user-circle-o fa-2x"></i>
       <h5>Login page</h5>
       </div>
       <%
       String msg =(String)session.getAttribute("logout-msg");
       if(msg!=null){
       %>
       <div class="alert alert-success" role="alert"><%=msg  %> </div>

       <%
       session.removeAttribute("logout-msg");

       }%>
       <!--error msg--->
       <%
              String errMsg =(String)session.getAttribute("error-msg");
              if(errMsg!=null){
              %>
              <div class="alert alert-danger" role="alert"><%=errMsg %> </div>

              <%
              session.removeAttribute("error-msg");

              }%>



       <div class="card-body">
       <form action="loginServlet" method="post">
         <div class="mb-3">
           <label for="exampleInputEmail1" class="form-label"> Enter Email </label>
           <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
         </div>
         <div class="mb-3">
           <label for="exampleInputPassword1" class="form-label">Password</label>
           <input type="password" class="form-control" id="exampleInputPassword1" name="password">
         </div>

         <button type="submit" class="btn btn-primary">Login</button>
       </form>


       </div>
       </div>

  </body>
  </html>
<%-- 
    Document   : adminNav
    Created on : 14 Oct, 2021, 10:30:31 AM
    Author     : abhishek-pt4287
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#"><s:property value="#session.login"/></a>
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <s:url action="adminHome" var="adminHome">
            <s:param name="user" value="#session.login"/>
        </s:url>
      <a class="nav-link" href="<s:property value="#adminHome"/>">Home</a>
    </li>
    <li class="nav-item">
        <s:url action="combobox" var="combobox">
        </s:url>
        <a class="nav-link" href="<s:property value="#combobox"/>">Add Hotel</a>
    </li>
    <li class="nav-item" style="text-align: right">
        <s:url action="logout" var="logout">
        </s:url>
     <a class="nav-link" href="<s:property value="#logout"/>">Log Out</a>
    </li>
  </ul>
</nav>
        
    </body>
</html>

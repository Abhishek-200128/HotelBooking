<%-- 
    Document   : roomBook
    Created on : 11 Oct, 2021, 9:31:29 AM
    Author     : abhishek-pt4287
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
        <h1 style="padding-top: 2%; text-align: center;">Select Room of Choice - <s:property value="#session.hname"/></h1>
        <s:action name="getRooms" executeResult="true"></s:action>
    </body>
</html>

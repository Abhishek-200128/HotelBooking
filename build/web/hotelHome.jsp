<%-- 
    Document   : hotelHome
    Created on : 6 Oct, 2021, 10:01:32 AM
    Author     : abhishek-pt4287
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Hotel Home</title>
    </head>
    <body>
        <script language="JavaScript">
var x=window.history.length;
if (window.history[x]!=window.location)
{
window.history.forward();
}
</script>
        <s:action name="FetchRooms" executeResult="true"/>
    </body>
</html>

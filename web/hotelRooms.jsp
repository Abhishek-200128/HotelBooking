<%-- 
    Document   : hotelRooms
    Created on : 13 Oct, 2021, 10:38:43 AM
    Author     : abhishek-pt4287
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4-4.6.0/jq-3.6.0/dt-1.11.3/b-2.0.1/r-2.2.9/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4-4.6.0/jq-3.6.0/dt-1.11.3/b-2.0.1/r-2.2.9/datatables.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
<meta http-equiv="Pragma" content="no-cache"> 
        <meta http-equiv="Cache-Control" content="no-cache"> 
        <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
        <title>JSP Page</title>
    </head>
    <body>
        <br>
        
        <div class="card fat">
	<div class="card-body">
            
        <div style="text-align: center; padding-left: 5%; padding-right: 5%">
            <h1>Rooms</h1>
            <table id="hotel" class="table table-striped" style="width: 100%; text-align: center;">
                <thead>
                <tr>
                    <td>Name</td>
                    <td>Total Rooms</td>
                    <td>Available Rooms</td>
                    <td>Price</td>
                    <td>Photo</td>
                    <td>Modify</td>
                    <td>Remove</td>
                </tr>
                </thead>
                <s:iterator value="dataList">
                    <tr>
                        <td><s:property value="name"/></td>
                        <td><s:property value="total"/></td>
                        <td><s:property value="available"/></td>
                        <td><s:property value="price"/></td>
                        <td>
			<img width="100" height="100" src="<s:url value='FetchRooms.action?id='/><s:property value='id'/>">
			</td>
                        <td><s:url action="getRoom" var="myurl">
                                <s:param name="id" value="%{id}"/>                                  
                        </s:url>
                            <a href='<s:property value="#myurl"/>'>
                                <input type="button" class="btn btn-primary" value="Modify"/>
                            </a>
                                </td>
                        <td><s:url action="removeRoom" var="myurl1">
                                <s:param name="id" value="%{id}"/>                                  
                        </s:url>
                            <a href='<s:property value="#myurl1"/>'>
                                <input type="button" class="btn btn-danger" value="Remove"/>
                            </a>
                                </td>                                
                    </tr>
                </s:iterator>
            </table>
        </div>
        </div></div>
    </body>
        <script>
        $(document).ready(function() {
    $('#hotel').DataTable();
} );
</script>
</html>

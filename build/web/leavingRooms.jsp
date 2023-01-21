<%-- 
    Document   : leavingRooms
    Created on : 11 Oct, 2021, 5:07:41 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <div style="padding-left: 5%; padding-right: 5%">
            <table id="hotel" class="table table-striped" style="text-align: center; width: 100%;">
                <thead>
                <tr>
                    <td>Name</td>
                    <td>Room Type</td>
                    <td>Check Out Date</td>
                    <td>Status</td>
                    <td>Check-Out</td>
                </tr>
                </thead>
                <s:iterator value="dataList">
                    <tr>
                        <td><s:property value="name"/></td>
                        <td><s:property value="room"/></td>
                        <td><s:property value="checkout"/></td>
                        <td><s:property value="status"/></td>
                        <td><s:url action="checkout" var="myurl">
                                <s:param name="id" value="%{id}"/>                                  
                        </s:url>
                            <a href='<s:property value="#myurl"/>'>
                                <input type="button" class="btn btn-danger" value="Check Out"/>
                            </a>
                                </td>                               
                    </tr>
                </s:iterator>
            </table>
    </div>
    </body>
    <script>
        $(document).ready(function() {
    $('#hotel').DataTable();
} );
</script>
</html>

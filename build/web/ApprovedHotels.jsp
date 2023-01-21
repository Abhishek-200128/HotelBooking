<%-- 
    Document   : ApprovedHotels
    Created on : 20 Oct, 2021, 11:16:06 AM
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
    </head>
    <body>
        <div style="text-align: center; padding-left: 5%; padding-right: 5%;">
                    <h1>Approved Hotels</h1>
            <table id="hotels" class="table table-striped" style="width: 100%;">
                <thead>
                <tr>
                    <td>Name</td>
                    <td>State</td>
                    <td>Address</td>
                    <td>Pin code</td>
                    <td>Latitude</td>
                    <td>Longitude</td>
                    <td>Photo</td>
                    <td>Modify</td>
                    <td>Remove</td>
                </tr>
                </thead>
                <s:iterator value="dataList">
                    <tr>
                        <td><s:property value="name"/></td>
                        <td><s:property value="state"/></td>
                        <td><s:property value="address"/></td>
                        <td><s:property value="pincode"/></td>
                        <td><s:property value="lat"/></td>
                        <td><s:property value="longi"/></td>
                        <td>
			<img width="100" height="100" src="<s:url value='FetchRecords.action?id='/><s:property value='id'/>">
			</td>
                        <td><s:url action="getHotel" var="myurl">
                                <s:param name="id" value="%{id}"/>                                  
                        </s:url>
                            <a href='<s:property value="#myurl"/>'>
                                <input type="button" class="btn btn-primary" value="Modify"/>
                            </a>
                                </td> 
                        <td><s:url action="removeHotel1" var="myurl1">
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
    </body>
    <script>
        $(document).ready(function() {
    $('#hotels').DataTable();
} );
    </script>
</html>

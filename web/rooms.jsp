<%-- 
    Document   : rooms
    Created on : 11 Oct, 2021, 10:09:50 AM
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
                <div class="card fat">
	<div class="card-body">
            <table style="text-align: center; width: 100%;" id="hotels" class="table table-striped">
            <thead>
                <tr>
                    <td>Name</td>
                    <td>Available</td>
                    <td>Price</td>
                    <td>Photo</td>
                    <td>Book Room</td>
                </tr>
                </thead>
                <s:iterator value="dataList">
                    <tr>
                        <td><s:property value="name"/></td>
                        <td><s:property value="available"/></td>
                        <td><s:property value="price"/></td>
                        <td>
                            <img width="100" height="100" src="<s:url value='getRooms.action?id='/><s:property value='id'/>">
                        </td> 
                                <td><input type="button" class="btn btn-success" onclick="loadDoc('<s:property value="id"/>')" value="Book Room"/></td>
                    </tr>
                </s:iterator>
            </table>
            
        </div></div> 
        <div id="demo">
            
        </div>
    </body>
            <script>
        $(document).ready(function() {
    $('#hotels').DataTable();
} );

function loadDoc(id) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     document.getElementById("demo").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "bookRoom.action?id="+id, true);
  xhttp.send();
}

function display1(){
    const params = new URLSearchParams(window.location.search)
    var id=params.get('id');
    document.getElementById("demo1").innerHTML=id;
    }
</script>
</html>

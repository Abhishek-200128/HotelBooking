<%-- 
    Document   : addState
    Created on : 21 Oct, 2021, 12:08:09 PM
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
  <link rel="stylesheet" href="error.css"/>
        <title>Booking Page</title>
    </head>
    <body>

        <div class="row justify-content-md-center h-100" style="padding-bottom: 2%">                         
				<div class="card-wrapper">
                                            <br><br><br>
					<div class="card fat">
						<div class="card-body">
                                                    <h4 class="card-title" style="text-align: center;">Add State</h4>
            <s:form action="addState" name="myform">    
            <s:textfield name="state" label="State Name" />
            <s:textfield name="lat" label="Latitude"/>
            <s:textfield name="longi" label="Longitude"/>
            <s:submit class="btn btn-success" value="Add State"/>
        </s:form>
                                                </div></div></div></div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    <script>
$(function(){
    $("form[name='myform']").validate({ // initialize the plugin
        rules: {
            state: {
                required: true,
            },

            lat: {
                required: true,
                number:true
            },
            longi: {
                required: true,
                number:true
            }
        },
        messages:{
            state: "Please Select State",
            lat: {
                required: "Please Enter Latitude",
                number: "It should be only numbers"
            },
            longi: {
                required: "Please Enter Longitude",
                number: "It should be only numbers"
            },
            
        },
        submitHandler: function(form){
            form.submit();
        }
    });
    });
        </script>
    </body>
</html>

<%-- 
    Document   : updateProfile
    Created on : 13 Oct, 2021, 11:09:40 AM
    Author     : abhishek-pt4287
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Profile</title>
        <link rel="stylesheet" href="error.css"/>
        <link rel="stylesheet" href="forms.css"/>
    </head>
    <body>
        <script language="JavaScript">
var x=window.history.length;
if (window.history[x]!=window.location)
{
window.history.forward();
}
</script>
                <div class="row justify-content-md-center h-100">                        
				<div class="card-wrapper">
                                            <br><br><br>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title" style="text-align: center;">Update Profile</h4>
        <s:form action="modifyProfile?id=%{id}" name="myform" method="POST" enctype="multipart/form-data">
            <s:textfield name="name" label="Name"/>
            <s:textfield name="user" label="User_id"/>
        <s:textfield label="Phone" name="phone"/>
        <s:submit value="Update Profile" class="btn btn-success"/>   
        </s:form>
                                                </div></div></div></div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
        <script>
$(function(){
    $("form[name='myform']").validate({ // initialize the plugin
        rules: {
            name: {
                required: true,
            },
            phone: {
                required: true,
                number:true
            },
            user: {
                required: true,
            }
        },
        messages:{
            name: "Please Enter Name",
            phone: {
                required: "Please Enter Phone Number",
                number: "It should be only numbers"
            },
            user: {
                required: "Please Enter User_id",
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

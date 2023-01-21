<%-- 
    Document   : modifyHotel
    Created on : 5 Oct, 2021, 3:01:05 PM
    Author     : abhishek-pt4287
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify Hotel</title>
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
							<h4 class="card-title" style="text-align: center;">Modify Hotel</h4>
                                                        <s:if test="#session.login=='admin'">
        <s:form action="modifyHotel1?id=%{id}" name="myform" method="POST" enctype="multipart/form-data">
            <s:textfield name="Name" label="Hotel Name"/>
        <s:combobox label="State" name="state" headerKey="-1" headerValue="--Select State--" list="apptnList1"/>
        <s:textarea label="Address" name="Address"/>
        <s:textfield label="Pincode" name="pincode"/>
        <s:textfield label="Latitude" name="lat"/>
        <s:textfield label="Longitude" name="longi"/>
        <s:textfield label="Phone" name="phone"/>
        <s:file name="photo" label="Photo"/>
        <s:submit value="Modify Hotel" class="btn btn-success"/>   
        </s:form>
                                                        </s:if>
                                                        <s:else>
        <s:form action="modifyHotel?id=%{id}" name="myform" method="POST" enctype="multipart/form-data">
            <s:textfield name="Name" label="Hotel Name"/>
        <s:combobox label="State" name="state" headerKey="-1" headerValue="--Select State--" list="apptnList1"/>
        <s:textarea label="Address" name="Address"/>
        <s:textfield label="Pincode" name="pincode"/>
        <s:textfield label="Latitude" name="lat"/>
        <s:textfield label="Longitude" name="longi"/>
        <s:textfield label="Phone" name="phone"/>
        <s:file name="photo" label="Photo"/>
        <s:submit value="Modify Hotel" class="btn btn-success"/>   
        </s:form>                                                    
                                                        </s:else>
                 </div>
					</div>
				</div>
                            
			</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>

        <script>
$(function(){
    $("form[name='myform']").validate({ // initialize the plugin
        rules: {
            Name: {
                required: true,
            },
            state: {
                required: true,
            },
            Address: {
                required: true,
                minlength: 2
            },
            pincode: {
                required: true,
                minlength: 6,
                number: true
            },
            phone: {
                required: true,
                number:true
            },
            lat: {
                required: true,
                number:true
            },
            longi: {
                required: true,
                number:true
            },
            photo: {
                required: true,
            }
        },
        messages:{
            Name: "Please Enter Name",
            state: "Please Select State",
            Address:{ required: "Please Enter Address",
                minlength: "Please Enter Address"
            },
            pincode:{ required: "Please Enter Pincode",
                minlength: "Minimum of 6 Numbers",
                number: "Numbers only"
                
            },
            phone: {
                required: "Please Enter Phone Number",
                number: "It should be only numbers"
            },
            lat: {
                required: "Please Enter Latitude",
                number: "It should be only numbers"
            },
            longi: {
                required: "Please Enter Longitude",
                number: "It should be only numbers"
            },
            photo: {
                required: "Please Select Photo",
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

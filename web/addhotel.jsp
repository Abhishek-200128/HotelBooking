<%-- 
    Document   : addhotel
    Created on : 4 Oct, 2021, 6:08:19 AM
    Author     : abhishek-pt4287
--%>
<jsp:include page="adminNav.jsp"></jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Add Hotel</title>
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
							<h4 class="card-title" style="text-align: center;">Add Hotel</h4>
        <s:form action="addhotel" method="post" id="myform" enctype="multipart/form-data">
            <s:textfield name="hotelName" id="name" label="Hotel Name"/>
        <s:combobox label="State" id="state" name="state" headerKey="-1" headerValue="--Select State--" list="apptnList"/>
        <s:textarea label="Address" id="address" name="Address"/>
        <s:textfield label="Pincode" id="pincode" name="pincode"/>
        <s:textfield label="Latitude" id="lat" name="lat"/>
        <s:textfield label="Longitude" id="longi" name="longi"/>
        <s:textfield label="Phone" id="phone" name="phone"/>
        <s:file name="photo" id="photo" label="Photo"/>
        <s:submit class="btn btn-primary" onclick="validate()" value="Add Hotel"/>   
        </s:form>
                                                        						</div>
					</div>
				</div>
                            
			</div>
               	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>

        <script>
$(function(){
    $("form[name='myform']").validate({ // initialize the plugin
        rules: {
            hotelName: {
                required: true,
            },
            state: {
                required: true,
            },
            address: {
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
            hotelName: "Please Enter Name",
            state: "Please Select State",
            address:{ required: "Please Enter Address",
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

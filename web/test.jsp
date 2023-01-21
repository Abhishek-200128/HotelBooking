<%-- 
    Document   : test
    Created on : 19 Oct, 2021, 12:53:24 PM
    Author     : abhishek-pt4287
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<div class="row justify-content-md-center h-100" style="padding-bottom: 2%">                         
				<div class="card-wrapper">
                                            <br><br><br>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title" style="text-align: center;">Select Check in and Check out date - <s:property value="id"/></h4> 
                                                        <s:form>
            <s:textfield name="checkin" type="date" format="dd-MM-yyyy" label="Check in Date" />
            <s:textfield name="checkout" type="date" format="dd-MM-yyyy" label="Check out Date" />
            <s:textfield name="id" type="hidden" value="%{id}"/>
            <s:submit class="btn btn-success" onclick="display1()" value="Book"/>
                                                        </s:form>
                                                </div></div></div></div>
<div id="demo1"></div>
<script>
    function display1(){
        document.getElementById("demo1").innerHTML='<s:property value="id"/>';
    }
</script>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="model.PaymentManagement" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
</head>
<body>
<h1>Payment Details</h1>
<br>
<%


//Delete user----------------------------------
if (request.getParameter("id") != null)
{
	PaymentManagement userObj = new PaymentManagement();
String stsMsg = userObj.deleteBill(request.getParameter("id"));
session.setAttribute("statusMsg", stsMsg);
}



PaymentManagement userObj = new PaymentManagement();
out.print(userObj.readBillDetails());
%>
</body>
</html>
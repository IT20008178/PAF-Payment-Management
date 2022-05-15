<%@page import="model.PaymentManagement" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
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



<%
//Insert User Data----------------------------------
if (request.getParameter("id") != null)
{
	PaymentManagement userObj = new PaymentManagement();
String stsMsg = userObj.insertBill(request.getParameter("id"),


request.getParameter("Payment ID"),
request.getParameter("Amount"),
request.getParameter("Pay Date"));
session.setAttribute("Card Holder", stsMsg);
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
</head>

<body>

<h1>Payment Details</h1>
<br>

<form method="post" action="add.jsp">

Payment ID: <input name="Payment ID" type="text"><br><br>
Amount: <input name="Amount" type="text"><br><br>
Pay Date: <input name="Pay Date" type="text"><br><br>
Card Holder: <input name="Card Holder" type="text"><br><br>




<input name="btnSubmit" type="submit" value="Submit"><br><br>
</form>

<%
out.print(session.getAttribute("statusMsg"));
%>

<br>





</body>
</html>
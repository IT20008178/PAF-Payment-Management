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



<%
//Update user data----------------------------------
if (request.getParameter("id") != null)
{
	PaymentManagement userObj = new PaymentManagement();
String stsMsg = userObj.EditBillDetails(request.getParameter("id"),

request.getParameter("Payment ID"),
request.getParameter("Amount"),
request.getParameter("Pay Date"),
request.getParameter("Card Holder"));
session.setAttribute("statusMsg", stsMsg);
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>

<body>

<h1> Update Payment Details</h1>

<form method="post" action="Update Payment Details.jsp">
Payment ID:
<input name="Payment ID" type="text"
class="form-control form-control-sm">
Amount:
<input name="Amount" type="text"
class="form-control form-control-sm">
<br> Pay Date:
<input name="Pay Date" type="text"
class="form-control form-control-sm">
<br> Card Holder:
<input name="Card Holder" type="text"
class="form-control form-control-sm">
<br> Account Number:
<input name=" Account Number type="text"
class="form-control form-control-sm">
<br>
<input name="btnsubmit" type="submit" value="update"
class="btn btn-primary">
</form>



<%
out.print(session.getAttribute("statusMsg"));
%>
<br>
<%
PaymentManagement userObj = new PaymentManagement();
out.print(userObj.readBillDetails());
%>

</body>
</html>
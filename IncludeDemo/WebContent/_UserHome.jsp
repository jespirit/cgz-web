<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>_User Home</title>
</head>
<body>
<%@ include file="header.html" %>
<%
	RequestDispatcher dispatcher = request.getRequestDispatcher("Welcome");
	request.setAttribute("name", "Arun");
	dispatcher.include(request, response);
	//dispatcher.forward(request, response);
	
	request.setAttribute("smash", "Captain Falcon");
%>
<%@ include file="_Welcome.jsp" %>
<h2 style='color:green'>This is the User Home</h2>
<%
	dispatcher = request.getRequestDispatcher("Footer");
	dispatcher.include(request, response);
%>
</body>
</html>
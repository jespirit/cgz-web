<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="ca.myseneca.jespiritu.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<% 
	User user = (User) request.getAttribute("user");
%>
<body>
<h1>Welcome <%= user.getUsername() %></h1>
</body>
</html>
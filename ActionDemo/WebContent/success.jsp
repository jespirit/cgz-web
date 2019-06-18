<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="ca.myseneca.jespiritu.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
</head>
<jsp:useBean id="userBean" class="ca.myseneca.jespiritu.Employee" scope="request" />
<body>
<h1>Welcome Message <%= request.getParameter("message") %></h1>
<p>First Name: <jsp:getProperty property="firstname" name="userBean" /></p>
</body>
</html>
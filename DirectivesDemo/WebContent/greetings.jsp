<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page session="true" %>
<%@ page buffer="8kb" %>
<%@ page errorPage="errorPage.jsp" %>
<%@ page import="java.util.Date" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<%
	String name = request.getParameter("name");
	if (name == null || "".equals(name)) {
		throw new Exception("Name is empty");
	}
	
	Date date = new Date();
%>
<body>
<div id="header" style="background-color: blue; height: 20%;">
<%@ include file="header.html" %>
</div>
Current Date <%= date %>
<div id="content" style="background-color: gray; height: 70%; text-align: center"></div>
<br/>
<span style="color: green; font-size: 100px;">Welcome <%= name %></span>
</div>
<div style="height: 8%; bottom: 0; position: relative;">
<%@ include file="footer.html" %>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<%@ page import="social.dao.*" %>
<%@ page import="social.model.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Notifications</h1>
<%
	UserDAO uDao = new UserDAO();
	// Retrieve from server context?
	User user = uDao.getUserByEmail("lArmStrong@gmail.com");
	int userId = user.getUser_id();
%>
<div>
<%= user.getFirst_name() + " " + user.getLast_name() %>
<%= "<img src='../images/img" + userId + ".png'/>" %>
</div>

</body>
</html>
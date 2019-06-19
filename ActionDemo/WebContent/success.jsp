<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="ca.myseneca.jespiritu.*" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<h2>Hobbies</h2>
<%
	Employee e = (Employee) request.getAttribute("userBean");
	String[] hobbies = e.getHobbies();
	for (int x = 0; x < hobbies.length; x++) {
		out.print(hobbies[x] + "<br/>");
	}
%>

<c:forEach items=${userBean.hobbies} var="item">
	Item is: ${item} <br/>
</c:forEach>
</body>
</html>
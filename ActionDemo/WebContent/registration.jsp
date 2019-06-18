<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="ca.myseneca.jespiritu.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Registration</title>
</head>
<jsp:useBean id="userBean" class="ca.myseneca.jespiritu.Employee" scope="request" />
<jsp:setProperty name="userBean" property="*" />
<% if (request.getParameter("register") != null) { %>
<jsp:forward page="success.jsp">
	<jsp:param name="message" value="Registration Successful" />
</jsp:forward>
<% } %>
<body>

<h2>Enter Details</h2>
<form method="post">
First Name <input type="text" name="firstname" /><br/>
Last Name <input type="text" name="lastname" /><br/>
Username <input type="text" name="username" /><br/>
Password <input type="text" name="password" /><br/>

Gender
<input type="radio" name="gender" value="male" />Male<br />
<input type="radio" name="gender" value="female" />Female<br />

Hobbies
<input type="checkbox" name="hobbies" value="dance" />Dance
<input type="checkbox" name="hobbies" value="music" />Music
<input type="checkbox" name="hobbies" value="sports" />Sports
<input type="checkbox" name="hobbies" value="painting" />Painting
	
Country
<select name="designation">
	<option value="1">Manager</option>
</select>

<input type="submit" name="register" value="register" />
</form>

</body>
</html>
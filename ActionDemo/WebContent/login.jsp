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
	if (request.getParameter("login") != null) {
		User user = new User();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		if ("tom".equals(user.getUsername()) && "jerry".equals(user.getPassword())) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			request.setAttribute("user", user);
			dispatcher.forward(request, response);
		}
		else {
			out.print("Password and username does not match");
		}
	}
%>
<body>
<form method="post">
Username <input type="text" name="username" /><br/>
Password <input type="text" name="password" /><br/>
	
<input type="submit" name="login" value="login" />
</form>

</body>
</html>
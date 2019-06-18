<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%! int errors = 0; %>
<%
	String message = null;
	if (request.getParameter("register") != null) {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		errors = 0;
		
		if (firstname == null || firstname.trim().length() == 0) {
			errors++;
			response.sendRedirect("registration.jsp?message='First name cannot be null'");
		}
		else if (lastname == null || lastname.trim().length() == 0) {
			errors++;
			response.sendRedirect("registration.jsp?message='Last name cannot be null'");
		}
		else if (username == null || username.trim().length() == 0) {
			errors++;
			response.sendRedirect("registration.jsp?message='Username cannot be null'");
		}
		else if (password == null || password.trim().length() == 0) {
			errors++;
			response.sendRedirect("registration.jsp?message='Password name cannot be null'");
		}
	}
%>
<body>
<h1>You have successfully registered</h1>
</body>
</html>
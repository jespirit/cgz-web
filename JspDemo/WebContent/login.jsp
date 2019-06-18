<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	String message = null;
	if (request.getParameter("login") != null) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if ("tom".equals(username) && "jerry".equals(password)) {
			response.sendRedirect("success.jsp");
		}
		else {
			message = "Password and username does not match";
		}
	}
%>
<body>
<%
	if (message != null)
		out.print("<span style='color:red'>" + message + "</span>");
%>
<form method="post">
Username <input type="text" name="username" /><br/>
Password <input type="text" name="password" /><br/>
	
<input type="submit" name="login" value="login" />
</form>

</body>
</html>
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
	if (request.getParameter("message") != null) {
		message = request.getParameter("message");
	}
%>
<body>
<%
	if (message != null)
		out.print("<span style='color:red'>" + message + "</span>");
%>

<form method="post" action="details.jsp">
First Name <input type="text" name="firstname" /><br/>
Last Name <input type="text" name="lastname" /><br/>
Username <input type="text" name="username" /><br/>
Password <input type="text" name="password" /><br/>

Gender
<input type="radio" name="gender" value="male" />Male<br />
<input type="radio" name="gender" value="female" />Male<br />

Hobbies
<input type="checkbox" name="hobbies" value="dance" />Dance
<input type="checkbox" name="hobbies" value="music" />Music
<input type="checkbox" name="hobbies" value="sports" />Sports
<input type="checkbox" name="hobbies" value="painting" />Painting
	
Country
<select name="country">
	<option value="Canada">Canada</option>
	<option value="USA">USA</option>
	<option value="Philippines">Philippines</option>
	<option value="Brazil">Brazil</option>
</select>

<input type="submit" name="register" value="register" />
</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sample</title>
</head>
<%!
	int count = 0;

	void incrementCount() {
		count++;
	}
%>
<body>
<h1>Sample Page</h1>
<h2>
<%
	int localVariable = 0;
	out.print("This page is viewed " + count + " times");
	incrementCount();
%>
</h2>
The value of the local variable is <%= localVariable %>
<% localVariable++; %>
</body>
</html>
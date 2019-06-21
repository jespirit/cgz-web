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

<h2>Friend Requests</h2>

<table>
<%
	RequestDAO rDao = new RequestDAO();
	
	List<Request> myRequests = rDao.getRequest_To(userId);
	
	if (myRequests != null) {
		out.print("myrequests: " + myRequests.size());
		for (int i=0; i<myRequests.size(); i++) {
			Request req = myRequests.get(i);
			User friend = req.getUser_request();

			out.print("<tr><td>" + friend.getFirst_name() + "</td>" +
					"<td><button onclick='acceptOrDeclineRequest(" + friend.getUser_id() + ", " + userId + ", " + req.getRequest_id() + ", -1)'>Decline</button></td>" +
					"<td><button onclick='acceptOrDeclineRequest(" + friend.getUser_id() + ", " + userId + ", " + req.getRequest_id() + ", 1)'>Accept Friend</button></td>" +  
				"</tr>");
		}
	}
	else {
		out.print("<h2>No notifications</h2>");
	}
%>
</table>

<!-- Latest compiled and minified jQuery 3.2.1 JavaScript -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="crossorigin="anonymous"></script>

<!-- custom JavaScript -->
<script src="../js/main.js"></script>
</body>
</html>
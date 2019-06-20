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
<h1>Friends</h1>
<%
	UserDAO uDao = new UserDAO();
	// Retrieve from server context?
	User user = uDao.getUserByEmail("ltance@gmail.com");
	int userId = user.getUser_id();
%>
<div>
<%= user.getFirst_name() + " " + user.getLast_name() %>
<%= "<img src='../images/img" + userId + ".png'/>" %>
</div>

<form method="get" action="../MyFriendsServlet">
	<input type="radio" name="friends" value="myfriends" />My Friends
	<input type="radio" name="friends" value="findfriends" />Find Friends
	<input type="hidden" name="userid" value="<%= userId %>"/>
	<input type="submit" name="search" value="search"/>
</form>

<h2>My Friends</h2>
<table>
<%
	List<Friends> myFriends = (List<Friends>) session.getAttribute("myfriends");
	List<Friends> myNonFriends = (List<Friends>) session.getAttribute("mynonfriends");
	if (myFriends != null) {
		out.print("myfriends: " + myFriends.size());
		for (int i=0; i<myFriends.size(); i++) {
			User friend = myFriends.get(i).getUser_accepted();
			out.print("<tr><td>" + friend.getFirst_name() + "</td></tr>");
		}
	}
	else if (myNonFriends != null) {
		out.print("mynonfriends: " + myNonFriends.size());
		for (int i=0; i<myNonFriends.size(); i++) {
			User friend = myNonFriends.get(i).getUser_accepted();
			out.print("<tr><td>" + friend.getFirst_name() + "</td>" +
				"<td><button onclick='sendFriendRequest(" + userId + ", " + friend.getUser_id() + ")'>Friend Request</button></td>" +   
			"</tr>");
		}
	}
%>
</table>

<!-- Latest compiled and minified jQuery 3.2.1 JavaScript -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="crossorigin="anonymous"></script>

<!-- custom JavaScript -->
<script src="../js/main.js"></script>
</body>
</html>
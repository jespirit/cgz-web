<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String name = (String) request.getAttribute("name"); %>
<h1 style='color: brown'>Welcome Mr <%= name %></h1>
<p><%= (String) request.getAttribute("smash") %></p>
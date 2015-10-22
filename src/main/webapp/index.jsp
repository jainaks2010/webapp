<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Maven</title>
</head>
<body>
<%
String welcomeMessage = "Welcome to Book library";
%>
<h1 align="center"><%=welcomeMessage%></h1>
<h2 align="left">Click <a href="books/addBookForm.html">Add</a> to add new book  </h2>
</body>
</html>
<%@page import="com.zensar.poc.data.Book"%>
<%@page import="java.util.Collection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show All Books</title>
</head>
<body>
<h3 align="left"><a href=<%=request.getContextPath()+"/index.jsp"%>>Home</a></h3>
<%
Object booksObj=request.getAttribute("books");
Collection<Book> books = (Collection<Book>) booksObj;
%>
<table>
  <tr>
   <td>Book Name</td>
   <td>Book Author</td>
   <td>Price </td>
  </tr>
  <% 
   for(Book book : books){
  %>
  <tr>
    <td><%=book.getName()%></td>
    <td><%=book.getAuthor()%></td>
    <td><%=book.getPrice()%></td>
  </tr> 
  <%} %> 
</table>
</body>
</html>
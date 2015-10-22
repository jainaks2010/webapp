<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
</head>
<body>
<form:form method="post" action="addBook.html" commandName="command">
<table>
    <tr>
        <td><form:label path="name"> Book Name</form:label></td>
        <td><form:input path="name" /></td>
    </tr>
    <tr>
        <td><form:label path="author">Author</form:label></td>
        <td><form:input path="author" /></td>
    </tr>
    <tr>
        <td><form:label path="price">Price</form:label></td>
        <td><form:input path="price"/></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Add Book"/>
        </td>
    </tr>
</table> 
</form:form>
 </body>
</html>
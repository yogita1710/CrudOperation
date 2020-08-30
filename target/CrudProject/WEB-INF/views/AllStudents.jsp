<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table height='50%' width='80%'>
<tr>
<th>ID</th>
<th>Name</th>
<th>Course</th>
<th>Address</th>
<th>Operations</th>
</tr>

<c:forEach items="${allData}" var="Student1">
<tr>
	<td>${Student1.id}</td>
	<td>${Student1.name}</td>
	<td>${Student1.course}</td>
	<td>${Student1.address}</td>
	<td>
<a href="deleteStudent?id=${Student1.id}" class="btn btn-primary">delete</a>&nbsp; &nbsp;
<a href="editStudent?id=${Student1.id}" class="btn btn-info">edit</a>
</td>
</tr>
</c:forEach>
</table>
</body>
</html>
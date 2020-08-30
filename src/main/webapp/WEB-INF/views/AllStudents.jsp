<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="scripts.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<nav class="navbar navbar-default">
 <h1><center><b>RETRIEVE OPERATION</b></center></h1>
</nav>
<div class="container">
<table class="table table-hover" style="text-align:center;">
<tr>
<th>ID</th>
<th>NAME</th>
<th>COURSE</th>
<th>ADDRESS</th>
<th colspan="2" style="text-align:center;">OPERATIONS</th>
</tr> 
<tr>
<th colspan="4"></th>
<th  style="text-align:center;">DELETE OPERATION</th>
<th  style="text-align:center;">UPDATE OPERATION</th>
</tr>
<c:forEach items="${allData}" var="Student1">
<tr>
	<td>${Student1.id}</td>
	<td>${Student1.name}</td>
	<td>${Student1.course}</td>
	<td>${Student1.address}</td>
	<td><a href="deleteStudent?id=${Student1.id}" class="btn btn-danger"><i class="glyphicon glyphicon-trash"></i>&nbsp;&nbsp;DELETE</a></td>
	<td><a href="editStudent?id=${Student1.id}" class="btn btn-info"><i class="glyphicon glyphicon-edit"></i>&nbsp;&nbsp;UPDATE</a></td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%> 
<%@include file="scripts.jsp" %> 

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.errorName
{
color:red;
}
</style>
</head>
<body>
<nav class="navbar navbar-default">
 <h1><center><b>UPDATE OPERATION</b></center></h1>
</nav>
<div class="container">
<sf:form action="updateStudent" commandName="data">
<div class="form-group" >
<sf:input path="id" type="hidden" value="${data.id}"  class="form-control"/>
</div>
<label for="name">NAME:</label>
<sf:input path="name"  id="name" value="${data.name}"  class="form-control"/>
<sf:errors path="name" cssClass="errorName"/><br><br>
<div class="form-group" >
<label for="course">COURSE:</label>
<sf:input path="course"  id="course" value="${data.course}"  class="form-control"/>
<sf:errors path="course" cssClass="errorName"/><br><br>
</div>
<div class="form-group" >
<label for="address">ADDRESS:</label>
<sf:input path="address"  id="address" value="${data.address}"  class="form-control"/>
<sf:errors path="address" cssClass="errorName"/><br><br>
</div>
<input type="submit" value="UPDATE" class="btn btn-warning">
</sf:form>
</div>
</body>
</html>
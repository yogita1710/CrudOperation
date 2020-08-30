<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>  
    <%@include file="scripts.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD A STUDENT</title>
<style type="text/css">
.errorName
{
color:red;
}
</style>
</head>
<body>

<nav class="navbar navbar-default">
 <h1><center><b>CREATE OPERATION</b></center></h1>
</nav>
<div class="container">

<sf:form action="saveStudent" method="post" commandName="stu">
<div class=form-group>
<label for="name">NAME:</label>
<sf:input path="name" type="text" id="name" class="form-control" placeholder="ENTER YOUR NAME"/>
<sf:errors path="name" cssClass="errorName"/>
</div>
<br><br>
<div class=form-group>
<label for="course">COURSE:</label>
<sf:input path="course" type="text" id="course" class="form-control" placeholder="ENTER YOUR COURSE"/>
<sf:errors path="course" cssClass="errorName"/>
</div><br><br>
<div class=form-group>
<label for="address">ADDRESS:</label>
<sf:input path="address" type="text" id="address" class="form-control" placeholder="ENTER YOUR ADDRESS"/>
<sf:errors path="address" cssClass="errorName"/>
</div><br><br>


<input type="SUBMIT" value="SAVE" class="btn btn-success">

</sf:form>
</div>
</body>
</html>
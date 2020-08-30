<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD A STUDENT</title>
<!-- <style type="text/css">
.errorName
{
color:red;
}
</style> -->
</head>
<body>

<div><h2>FILL REGISTRATION DETAILS</h2></div>

<sf:form action="saveStudent" method="post" commandName="stu">
<label for="name">NAME:</label>
<sf:input path="name" type="text" id="name"/>
<%-- <sf:errors path="name" cssClass="errorName"/> --%>


<label for="course">COURSE:</label>
<sf:input path="course" type="text" id="course"/>
<sf:errors path="name" /><br><br>

<label for="address">ADDRESS:</label>
<sf:input path="address" type="text" id="address"/><br><br>


<input type="SUBMIT" value="SAVE">

</sf:form>
</body>
</html>
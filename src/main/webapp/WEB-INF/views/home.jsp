
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page session="false" %>
<html>
<head>
	<title>Студенты</title>
</head>
<body>
<form:form action="student.do" method="POST" commandName="student">
<table>
	<tr>
		<td>Student Id</td>
		<td><form:input path="studentId"/></td>
	</tr>
	<tr>
		<td>First name</td>
		<td><form:input path="firstname"/></td>
	</tr>
	<tr>
		<td>last name</td>
		<td><form:input path="lastname"/></td>
	</tr>
	<tr>
		<td>Level</td>
		<td><form:input path="yearLevel"/></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<input type="submit" name="action" value="Add">
			<input type="submit" name="action" value="Edit">
			<input type="submit" name="action" value="Delete">
			<input type="submit" name="action" value="Search">
		</td>
	
	</tr>
</table>
<br>
<table border="1">
		<th>ID</th>
		<th>First name</th>
		<th>Last name</th>
		<th>yearLevel</th>
		<c:forEach items="${studentList}" var="student">
			<tr>
					<td>${student.studentID}</td>
					<td>${student.firstname}</td>
					<td>${student.lastname}</td>
					<td>${student.yearLevel}</td>
			</tr>
		</c:forEach>
	
</table>

</form:form>
</body>
</html>

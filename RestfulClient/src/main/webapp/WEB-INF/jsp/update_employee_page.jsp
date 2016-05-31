<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update an Employee</title>
</head>
<body>
	<h1>Update an Employee</h1>
	<c:url var="updateUrl" value="/update_emp?eid=${employeeAttribute.eid}" />
	<form:form modelAttribute="employeeAttribute" method="POST"
		action="${updateUrl}">
		<table>
			<tr>
				<td><form:label path="eid">Employee ID: </form:label></td>
				<td><form:input path="eid" disabled="true" /></td>
			</tr>
			<tr>
				<td><form:label path="firstName">First Name: </form:label></td>
				<td><form:input path="firstName" /></td>
			</tr>
			<tr>
				<td><form:label path="lastName">Last Name: </form:label></td>
				<td><form:input path="lastName" /></td>
			</tr>
			<tr>
				<td><form:label path="age">Age: </form:label></td>
				<td><form:input path="age" /></td>
			</tr>
			<tr>
				<td><form:label path="city">City: </form:label></td>
				<td><form:input path="city" /></td>
			</tr>
			<tr>
				<td><form:label path="salary">Salary: </form:label></td>
				<td><form:input path="salary" /></td>
			</tr>
		</table>
		<input type="submit" value="Update" />
	</form:form>

</body>
</html>
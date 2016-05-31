<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Employee</title>
</head>
<body>
	<h1>Employee Details</h1>
	<c:if test="${empty employee}">
	Employee results not found!
</c:if>
	<c:if test="${not empty employee}">
		<table>
			<tr>
				<td width="100">Employee ID</td>
				<td>${employee.eid}</td>
			</tr>
			<tr>
				<td>Name</td>
				<td>${employee.firstName} ${employee.lastName}</td>
			</tr>
			<tr>
				<td>Age</td>
				<td>${employee.age}</td>
			</tr>
			<tr>
				<td>City</td>
				<td>${employee.city}</td>
			</tr>
			<tr>
				<td>Salary</td>
				<td>${employee.salary}</td>
			</tr>
		</table>
	</c:if>
	<br>
	<c:url var="homeUrl" value="/employees" />
	<a href="${homeUrl}">Main Page</a>
</body>
</html>
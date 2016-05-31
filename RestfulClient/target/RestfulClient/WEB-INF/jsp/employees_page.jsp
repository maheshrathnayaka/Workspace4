<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Employees</title>
</head>
<body>
	<c:url var="addUrl" value="/add_emp" />
	<h1>Employees</h1>
	<c:if test="${empty employees}">
	There are currently no employees in the list
</c:if>
	<c:if test="${not empty employees}">

		<table border="1">
			<tr
				style="font-family: 'Vollkorn', serif; font-size: 1.2em; color: black;">
				<td width="50">EID</td>
				<td width="150">First Name</td>
				<td width="150">Last Name</td>
				<td width="150">Age</td>
				<td width="150">City</td>
				<td width="150">Salary</td>
				<td width="50">View</td>
				<td width="50">Update</td>
				<td width="50">Remove</td>
			</tr>
			<c:forEach items="${employees}" var="employee">
				<c:url var="viewUrl" value="/view_emp?eid=${employee.eid}" />
				<c:url var="updateUrl" value="/update_emp?eid=${employee.eid}" />
				<c:url var="removeUrl" value="/remove_emp?eid=${employee.eid}" />
				<tr>
					<td><c:out value="${employee.eid}" /></td>
					<td id="${employee.eid}firstName"><c:out
							value="${employee.firstName}" /></td>
					<td id="${employee.eid}lastName"><c:out
							value="${employee.lastName}" /></td>
					<td id="${employee.eid}age"><c:out value="${employee.age}" /></td>
					<td id="${employee.eid}city"><c:out value="${employee.city}" /></td>
					<td id="${employee.eid}salary"><c:out
							value="${employee.salary}" /></td>
					<td id="${employee.eid}"><a href="${viewUrl}">View</a></td>
					<td id="${employee.eid}"><a href="${updateUrl}">Update</a></td>
					<td id="${employee.eid}"><a href="${removeUrl}">Remove</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<br>
	<a href="${addUrl}">Add Employee</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>

	
	<div class="container mt-3" align="center">
	<h1 class="text-bg-info">Employee Table</h1>
	<a href="addRecord" class="btn btn-success btn-sm">Add Record</a>
		
		<table border="1" class="table table-bordered">
			<thead>
				<tr>
					<th>Employee Name</th>
					<th>Employee Address</th>
					<th>Employee Phone</th>
					<th>Employee Salary</th>
					<th>Action1</th>
					<th>Action2</th>
				</tr>
			</thead>
			<tbody>


				<c:forEach items="${empList}" var="emp">
					<tr>


						<td>${emp.employeeName}</td>
						<td>${emp.employeeAddress}</td>
						<td>${emp.employeePhone}</td>
						<td>${emp.employeeSalary}</td>



						<td><a href="updateEmp/${emp.id}" class="btn btn-primary">Edit</a></td>
						<td><a href="deleteEmployee/${emp.id}" class="btn btn-danger"
							onclick="if (!(confirm('Are you sure?'))) return false;">Delete</a></td>
				</c:forEach>
				</tr>
			</tbody>
		</table>
	</div>


</body>
</html>
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
		<h1 class="text-bg-primary">Add Employee</h1>
		<table class="table table-bordered">


			<form:form method="post" action="saveEmployee" modelAttribute="emp">

				<tr>
					<td>Employee Name:</td>
					<td><form:input path="employeeName" /></td>
				</tr>
				<tr>
					<td>Employee Address :</td>
					<td><form:input path="employeeAddress" /></td>
				</tr>
				<tr>
					<td>Employee Phone:</td>
					<td><form:input path="employeePhone" /></td>
				</tr>
				<tr>
					<td>Employee Salary:</td>
					<td><form:input path="employeeSalary" /></td>
				</tr>
				<tr>

					<td><input type="submit" value="Save"
						class="text-bg-success" /></td>


					<td><input type="reset" value="Reset"
						class="text-bg-success" /></td>
				</tr>

			</form:form>
		</table>
	</div>
</body>
</html>
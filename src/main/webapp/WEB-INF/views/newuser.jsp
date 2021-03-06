<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${pageContext.request.contextPath}/resources/bootstrap.css"
	rel="stylesheet">
<title>Insert title here</title>
</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<spring:url value="/add" var="saveURL"></spring:url>
				<a href="${saveURL}" class = "btn-sm btn-primary" style = "color:white">Add New Employee</a>
				<div style = "margin-top:10px"></div>
				<table class="table  table-condensed table-bordered" style = "width:30%;">
					<tr class = "btn-primary">
						<td>Id</td>
						<td>Name</td>
						<td>Contact Number</td>
						<td colspan="2">    Action</td>
					

					</tr>
					<c:forEach items="${emps}" var="emp">

						<tr>
							<td>${emp.userId}</td>
							<td>${emp.userName}</td>
							<td>${emp.contactNumber}</td>
							<td><spring:url value="/update/${emp.userId}" var="updateURL"></spring:url>
								<a href="${updateURL}" class = "btn-sm btn-success" style = "color:white">Update</a></td>
							<td><spring:url value="/delete/${emp.userId}" var="deleteURL"></spring:url>
								<a href="${deleteURL}" class = "btn-sm btn-danger" style = "color:white">Delete</a></td>
						</tr>
					</c:forEach>
				</table>

			</div>
		</div>
	</div>

</body>
</html>

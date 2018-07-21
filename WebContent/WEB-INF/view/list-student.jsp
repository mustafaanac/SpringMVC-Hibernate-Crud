<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<title>Welcome to Student System</title>
</head>
<body>

<div class="container">

<div class="jumbotron"> 
		<h1>Welcome to Student System</h1>
		 <a class="btn btn-primary btn-lg"  onClick="window.location.href='showStudentForm'; return false;" type ="button" role="button">Add New Student</a> 
	 </div>

			<div>
				<h2>Student List</h2>
			</div>

			<div>
			
				<table class="table table-striped">
					<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
							<th>Phone Number</th>
							<th>Update/Delete</th>
				
					</tr>
					
					<c:forEach var="tempStudent" items="${students}" >
					
					<tr>
					
							<td>${tempStudent.firstName}</td>
							<td>${tempStudent.lastName}</td>
							<td>${tempStudent.email}</td>
							<td>${tempStudent.phoneNumber}</td>
							<td>
							<a class = "btn btn-info" href="${ pageContext.request.contextPath}/student/showFormForUpdate?studentID=${tempStudent.id}">Update</a>
							<a class = "btn btn-danger" href = "${pageContext.request.contextPath}/student/deleteStudent?studentID=${tempStudent.id}" 
							onclick="if(!(Confirm('silmek istediginize eminmisiniz'))) return false;">Delete</a>
							
							</td>
					</tr>
					</c:forEach>
				</table>
				
			</div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<title>New Student Form</title>
<style type="text/css">
.error{color: red}
</style>
</head>
<body>

 	<div class = "container">
 		<div class = "jumbotron"">
 			<h1>New Student Form</h1>
 		
 		</div>
 	<div>
 		<form:form class="form-horizantal" modelAttribute="student" action="saveStudent" method="POST">
				
				<form:hidden path="id"/>
				
				
				<div class="form-group">
					<label for="name" class="col-sm-10 control-label">Student Name</label>
					<div>
						<form:input type="text" class="form-control" id="name"
							placeholder="Name" path="firstName"></form:input>
						<form:errors path = "firstName" cssClass="error"></form:errors>	
					</div>
				</div>

				<div class="form-group">
					<label for="lastname" class="col-sm-10 control label">Student Last Name</label>
					<div>
						<form:input type="text" class="form-control" id="lastName"
							placeholder="LastName" path="lastName"></form:input>
						<form:errors path = "lastName" cssClass="error"></form:errors>		
					</div>
				</div>
				<div class="form-group">
					<label for="email" class="col-sm-10 control-label">Student Email Adress</label>
					<div>
						<form:input type="text" class="form-control" id="email"
							placeholder="Email" path="email"></form:input>
						<form:errors path = "email" cssClass="error"></form:errors>		
					</div>
				</div>
				
				<div class="form-group">
					<label for="prohenumber" class="col-sm-10 control-label">Student Phone Number</label>
					<div>
						<form:input type="text" class="form-control" id="phoneNumber"
							placeholder="PhoneNumber" path="phoneNumber"></form:input>
						<form:errors path = "phoneNumber" cssClass="error"></form:errors>		
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-10">
						<button type="submit" class="btn btn-primary">submit</button>
					</div>
				</div>


			</form:form>
			
			<p>
			<a href="${pageContext.request.contextPath}/student/list">Student List</a>
		</p>
 			
 	</div>
 	
 	</div>
 
</body>
</html>
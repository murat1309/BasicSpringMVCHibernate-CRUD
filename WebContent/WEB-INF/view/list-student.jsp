<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
		
		
		<div class="container">
			<div class="jumbotron"> 
				<h1> Öğrenci Sistemine Hoşgeldiniz..</h1>
				<p><a class="btn btn-primary btn-lg" onclick="window.location.href='showStudentForm'; return false;"  type="button" role="button">Ogrenci Ekle</a></p>
			</div>
			<div>
				<table class="table table-striped">
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email Address</th>
						<th>Update/Delete</th>
					</tr>
					
					<c:forEach var="data" items="${students}">
						 <tr>
						 	<td>${data.firstName}</td>
						 	<td>${data.lastName}</td>
						 	<td>${data.email}</td>
						 	<td> 
						 		<a class="btn btn-warning" href="${pageContext.request.contextPath}/student/showFormForUpdate?studentID=${data.id}">Update</a> 
						 		<a class="btn btn-danger" href="${pageContext.request.contextPath}/student/deleteStudent?studentID=${data.id}"
						 		onclick="if(!(confirm('Are you sure you want to delete this student = '))) return false;">Delete</a>
						 	</td>
						 </tr>
					</c:forEach>
					
				</table>
			</div>
		</div>
		
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
				<h1>Add new Student</h1>
			</div>
			
			<div>
				<form:form class="form-horizontal" modelAttribute="student" action="saveStudent" method="POST">
				<form:hidden path="id"/>
					<div class="form-group">
						<label for="adi" class="col-sm-10 control-label" >Ogrenci Adı :</label>
						<div>
							<form:input type="text" class="form-control" id="ad" placeholder="Ad giriniz.." path="firstName"></form:input>	
						</div>
					</div>
					
						<div class="form-group">
						<label for="soyadi" class="col-sm-10 control-label" >Ogrenci Soyadı:</label>
						<div>
							<form:input type="text" class="form-control" id="soyad" placeholder="Soyad giriniz.." path="lastName"></form:input>	
						</div>
					</div>
					
						<div class="form-group">
						<label for="email" class="col-sm-10 control-label" >Ogrenci Email :</label>
						<div>
							<form:input type="text" class="form-control" id="email" placeholder="Email giriniz.." path="email"></form:input>	
						</div>
					</div>
					
						<div class="form-group">					
						<div class="col-sm-10">
							<button type="submit" class="btn btn-primary">Kaydet</button>	
						</div>
					</div>
				</form:form>
			</div>
			<br>
			<p><a href="${pageContext.request.contextPath}/student/list">Ogrenci Listesine Geri Git</a></p>
		</div>
</body>
</html>
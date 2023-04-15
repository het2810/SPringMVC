<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>SignUp</h2>
	<form action="saveuser" method="post">
		FirstName: <input type="text" name="firstName"/><BR><BR>
		Email:<input type="email" name="email"/><BR><BR>
		Password: <input type="password" name="password"/><BR><BR>
	
		<input type="submit" value="SignUp"/>
	</form>
</body>
</html>
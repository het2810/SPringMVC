<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sign Up</title>
	<style>
		body {
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
		}

		h2 {
			text-align: center;
			margin-top: 50px;
			color: #333;
		}

		form {
			width: 400px;
			margin: 0 auto;
			background-color: #fff;
			border-radius: 5px;
			padding: 20px;
			box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
		}

		input[type="text"], input[type="email"], input[type="password"] {
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
			font-size: 16px;
		}

		input[type="submit"] {
			background-color: #4CAF50;
			color: #fff;
			padding: 12px 20px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			font-size: 16px;
			width: 100%;
			margin-top: 20px;
		}

		input[type="submit"]:hover {
			background-color: #45a049;
		}
	</style>
</head>
<body>
	<h2>Sign Up</h2>
	<form action="saveuser" method="post">
		<label for="firstName">First Name:</label>
		<input type="text" id="firstName" name="firstName" required><br><br>

		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required><br><br>

		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required><br><br>

		<input type="submit" value="SignUp">
		<a href="login">Login </a>
	</form>
</body>
</html>

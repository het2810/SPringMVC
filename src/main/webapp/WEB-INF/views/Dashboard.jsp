<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin Dashboard</title>
	<!-- Include meta viewport tag to make the dashboard responsive -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Include Bootstrap CSS for styling -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<header class="bg-dark text-white py-3">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="mb-0">Admin Dashboard</h1>
				</div>
			</div>
		</div>
	</header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
		<div class="container">
			<a class="navbar-brand" href="#">Dashboard</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="login">Logout</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="ListUsers">List Users</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Add your dashboard content here -->
</body>
</html>

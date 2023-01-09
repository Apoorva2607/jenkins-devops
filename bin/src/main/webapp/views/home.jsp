<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/home-style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@600&display=swap"
	rel="stylesheet" />

<title>login</title>
</head>
<body>
	<nav class="navbar navbar-light">
		<div class="container-fluid">
			<span class="navbar-text"> Product Management Tools </span>
		</div>
	</nav>
	<div class="container-fluid col-lg-6 col-md-6 col-sm-6">
		<div id="header-section">
			<b>Login</b>
		</div>
		<div id="middle-section">
			<form action="/login" name="loginForm" onsubmit="return validateLogin()">
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">Username</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" name="username" id="userid"
							placeholder="Enter your username"/>
							<span class="error"><p id="user_error" style="color:red;">&nbsp;</p></span>
					</div>
				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">Password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="password" id="passwordid"
							placeholder="Enter your password"/>
							<span class="error"><p id="pass_error" style="color:red;">&nbsp;</p></span>
					</div>
				</div>
				<input type="submit" value="Login" class="btn btn-primary">
			</form>
		</div>

	</div>
	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
		<script src="/js/myscript.js"></script>
</body>
</html>
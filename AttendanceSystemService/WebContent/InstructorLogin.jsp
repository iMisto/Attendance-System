<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

<title>InstructorLogin</title>
<style>
/*Centering all content*/
main {
	display: flex;
	flex-direction: column;
	align-items: center
}
/*AUB LOGO*/
#logo {
	width: 200px;
	length: 200px;
}

.btn {
	margin-top: 6px;
	margin-bottom: 24em;
}
</style>
</head>
<body>
	<main class="container p-5">
		<img src="./aublogo.png" alt="logo" id="logo">

		<h2>Instructor Login</h2>
		<form action="InstructorLogin" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Username</label> <input type="text"
					name="uname" class="form-control" id="uname"
					placeholder="Enter username">

			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					type="password" name="password" class="form-control"
					id="exampleInputPassword1" placeholder="Password">
			</div>
			<button type="submit" value="login" class="btn btn-primary">Submit</button>


		</form>
	</main>
</body>
</html>
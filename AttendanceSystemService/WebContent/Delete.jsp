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
<title>Delete</title>
<style>
main {
	display: flex;
	flex-direction: column;
	align-items: center
}

.btn {
	margin-top: 6px;
	margin-bottom: 24em;
}
</style>
</head>
<body>
	<main class="container p-5">
		<h2 style="text-align: center;">Enter StudentID to Delete</h2>
		<form action="Delete" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">StudentID</label> <input type="text"
					name="s_id" class="form-control" id="s_id"
					placeholder="Enter StudentID">
			</div>
			<button type="submit" value="Insert" class="btn btn-primary">Delete</button>
		</form>
	</main>
</body>
</html>
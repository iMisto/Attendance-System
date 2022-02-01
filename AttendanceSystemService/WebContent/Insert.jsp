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
<title>Insert</title>
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
		<h2 style="text-align: center;">Insert a Student</h2>
		<form action="Insert" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">StudentID</label> <input type="text"
					name="s_id" class="form-control" id="s_id"
					placeholder="Enter StudentID">

			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">InTime</label> <input type="Text"
					name="s_intime" class="form-control" id="exampleInputPassword1"
					placeholder="Enter InTime">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">OutTime</label> <input
					type="Text" name="s_outtime" class="form-control"
					id="exampleInputPassword1" placeholder="Enter OutTime">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">TotalTime</label> <input
					type="Text" name="s_totaltime" class="form-control"
					id="exampleInputPassword1" placeholder="Enter TotalTime">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Note</label> <input type="text"
					name="s_note" class="form-control" id="exampleInputPassword1"
					placeholder="Enter Note">
			</div>
			<button type="submit" value="Insert" class="btn btn-primary">Submit</button>


		</form>
	</main>
</body>
</html>
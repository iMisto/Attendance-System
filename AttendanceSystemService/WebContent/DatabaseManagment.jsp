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
<title>DatabaseManagment</title>
<style>
main {
	display: flex;
	flex-direction: column;
	align-items: center
}
</style>
</head>
<body>
	<main class="container p-5">
		<h2>Available Commands</h2>
		<a class="btn btn-primary" href="InstructorLogin.jsp" role="button">Back
			to login</a> <br /> <br /> <a class="btn btn-primary"
			href="DatabaseViewer.jsp" role="button">View Database</a> <br /> <br />
		<a class="btn btn-primary" href="Insert.jsp" role="button">Insert</a>
		<br /> <br /> <a class="btn btn-primary" href="Delete.jsp"
			role="button">Delete</a>
	</main>



</body>
</html>
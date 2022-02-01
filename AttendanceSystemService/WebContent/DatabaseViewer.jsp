<%@ page import="com.mysql.*"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

</head>
<body>
	<div id="content">


		<h3 style="text-align: center;">Displaying Student Information</h3>

		<!-- Design from bootstrap -->
		<table class="table table-striped">
			<thead>
				<tr>
					<th>s_id</th>
					<th>s_intime</th>
					<th>s_outtime</th>
					<th>s_totaltime</th>
					<th>s_note</th>
				</tr>
			</thead>
			<tbody>


				<%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = null;
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance", "root", "1234");
                Statement stmt = null;
                stmt = conn.createStatement();
                String query = "select * from student";
                ResultSet rs = null;
                rs = stmt.executeQuery(query);
                while(rs.next()){
            %>
				<tr>
					<%
                    int id = rs.getInt("s_id");
                    String intime = rs.getString("s_intime");
                    String outtime = rs.getString("s_outtime");
                    String totaltime= rs.getString("s_totaltime");
                    String note = rs.getString("s_note");
                %>
					<td><%=id %></td>
					<td><%=intime %></td>
					<td><%=outtime %></td>
					<td><%=totaltime %></td>
					<td><%=note %></td>
				</tr>

				<%      
                }
            %>

			</tbody>
		</table>
	</div>
	<a class="btn btn-primary" href="DatabaseManagment.jsp" role="button">Commands</a>
</body>
</html>
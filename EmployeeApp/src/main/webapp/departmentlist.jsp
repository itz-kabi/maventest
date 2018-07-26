

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ibm.model.*"%>

<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/jquery.min.js"></script>
<title>Department</title>
</head>
<body>

	<%@include file="Header.jsp"%>
	<div class=container>


		<h1>Department List</h1>
		<table class="table table-striped">

			<thead>

				<tr>
					<th>Dept Id</th>
					<th>Dept Name</th>
				</tr>

			</thead>

			<tbody>



				<%
					List<Department> depts = (List<Department>) request.getAttribute("depts");
					for (Department d : depts) {
				%>
				<tr>
					<td><%=d.getDeptId()%></td>
					<td><%=d.getDeptName()%></td>

				</tr>

				<%
					}
				%>

			</tbody>

		</table>



	</div>
</body>
</html>
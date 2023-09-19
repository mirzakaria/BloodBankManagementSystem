<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@page import="com.zakaria.BloodBank.model.*"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Donors</title>
<%@include file="includes/header.jsp"%>
</head>
<body>

	<%@include file="includes/navbar.jsp"%>


	<br>
	<div class="container">
		<div class="row">
			<h3>Donor list</h3>
		</div>
		<table class="table table-striped table-bordered">
			<thead class="table-dark">
				<tr>
					<th>Donor name</th>
					<th>Age</th>
					<th>Blood group</th>
					<th>Contact</th>
					<th>Address (District)</th>
					<th>Actions</th>

				</tr>
			</thead>
			

			<tbody>
				<%
				List<Donor> allDonor = (List<Donor>) request.getAttribute("allDonor");
				if (allDonor != null) {
					for (Donor donor : allDonor) {
				%>
				
				<tr>
					<td><%=donor.getDonorName() %></td>
					<td><%=donor.getAge() %></td>
					<td><%=donor.getBloodGroup() %></td>
					<td><%=donor.getContact() %></td>
					<td><%=donor.getDistrict() %></td>
					<td>
					<a class="btn btn-secondary" href="editDonorForm/<%=donor.getDonorId() %>">Edit</a>
					<a class="btn btn-danger" href="deleteDonor/<%=donor.getDonorId() %>">Delete</a>
					</td>
				</tr>
				
				<%
					}
				}
				%>

			</tbody>

		</table>
	</div>


<%@include file="includes/footer.jsp"%>
</body>
</html>
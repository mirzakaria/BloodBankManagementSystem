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
			<h4>Blood group: ${bloodGroup }</h4>
		</div>
		<table class="table table-striped table-bordered">
			<thead class="table-dark">
				<tr>
					<th>Donor name</th>
					<th>Age</th>
					<th>Blood group</th>
					<th>Contact</th>
					<th>Address (District)</th>

				</tr>
			</thead>
			

			<tbody>
				<%
				List<Donor> donorByGroup = (List<Donor> ) request.getAttribute("donorByGroup");
				if (donorByGroup != null) {
					for (Donor donor : donorByGroup) {
				%>
				
				<tr>
					<td><%=donor.getDonorName() %></td>
					<td><%=donor.getAge() %></td>
					<td><%=donor.getBloodGroup() %></td>
					<td><%=donor.getContact() %></td>
					<td><%=donor.getDistrict() %></td>
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
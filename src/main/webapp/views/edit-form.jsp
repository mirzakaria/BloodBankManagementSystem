<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
	<%@page import="com.zakaria.BloodBank.model.*"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Donor Information</title>

<%@include file="includes/header.jsp"%>

</head>
<body>

	<%@include file="includes/navbar.jsp"%>

	<%
	Donor donor = (Donor) request.getAttribute("donor");
	%>

	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">
				<b>Update Donor Information</b>
			</div>
			<div class="card-body">

				<form action="/updateDonor/<%=donor.getDonorId() %>" method="post">
					<div class="form-group mb-3">
						<label class="form-label">Full Name</label> <input type="text" value="<%=donor.getDonorName() %>"
							class="form-control" name="donorName" placeholder="Full name"
							required>
					</div>

					<div class="form-group mb-3">
						<label class="form-label">Address (District)</label> <input
							type="text" value="<%=donor.getDistrict() %>" class="form-control" name="district"
							placeholder="Enter your home District" required>
					</div>

					<div class="form-group mb-3">
						<label class="form-label">Age</label> <input type="text" value="<%=donor.getAge() %>"
							class="form-control" name="age" placeholder="Enter your age"
							required>
					</div>

					<div class="form-group mb-3">
						<label class="form-label">Phone number</label> <input type="text" value="<%=donor.getContact() %>"
							class="form-control" name="contact" placeholder="01XXX XXXXXX"
							required>
					</div>

					<div class="form-group md-3">
						<label for="bloodGroup">Blood Group</label> 
						<select id="bloodGroup" class="form-control" name="bloodGroup">
							<option value="A+" selected>A+</option>
							<option value="A-">A-</option>
							<option value="B+">B+</option>
							<option value="B-">B-</option>
							<option value="AB+">AB+</option>
							<option value="AB-">AB-</option>
							<option value="O+">O+</option>
							<option value="O-">O-</option>
						</select>
					</div>

					<button type="submit" class="btn btn-primary">Update</button>
				</form>
			</div>
		</div>
	</div>



<%@include file="includes/footer.jsp"%>
</body>
</html>
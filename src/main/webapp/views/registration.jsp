<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Register!</title>

<%@include file="includes/header.jsp"%>

</head>
<body>

	<%@include file="includes/navbar.jsp"%>


	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">
				<b>Be An Honorable Blood Donor!</b>
			</div>
			<div class="card-body">

				<form action="/addNewDonor" method="post">
					<div class="form-group mb-3">
						<label class="form-label">Full Name</label> <input type="text"
							class="form-control" name="donorName" placeholder="Full name"
							required>
					</div>

					<div class="form-group mb-3">
						<label class="form-label">Address (District)</label> <input
							type="text" class="form-control" name="district"
							placeholder="Enter your home District" required>
					</div>

					<div class="form-group mb-3">
						<label class="form-label">Age</label> <input type="text"
							class="form-control" name="age" placeholder="Enter your age"
							required>
					</div>

					<div class="form-group mb-3">
						<label class="form-label">Phone number</label> <input type="text"
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

					<div class="mb-3 form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1"
							required> <label class="form-check-label"
							for="exampleCheck1">Yes, I want to donate blood.</label>
					</div>
					<button type="submit" class="btn btn-primary">Register</button>
				</form>
			</div>
		</div>
	</div>



<%@include file="includes/footer.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@page import="com.zakaria.BloodBank.model.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Blood Bank</title>

<style>
.bg-img {
	height: 100vh;
	width: 100vw;
	object-fit: cover;
	filter: brightness(0.8);
	position: absolute
}
</style>

<%@include file="includes/header.jsp"%>
</head>
<body>
	<img class="bg-img" alt="bg image" src="../images/back.jpg">

	<%@include file="includes/navbar.jsp"%>



<%@include file="includes/footer.jsp"%>
</body>
</html>




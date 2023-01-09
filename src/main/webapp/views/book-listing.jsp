<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@600&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/css/book-listing-style.css" />
<title>Library Management</title>
</head>
<body>
	<nav class="navbar navbar-light">
		<div class="container-fluid">
			<span class="navbar-text"> Library Management</span> <span
				id="user-show"> &#128400; ${currentuser} </span>
			<form class="d-flex" action="/logout">
				<button class="logout-btn btn btn-primary" method="get" type="submit">
					logout</button>
			</form>
		</div>
	</nav>
	<div class="row g-0 book-listing-row">
		<div class="col-sm-6 col-md-8 book-listing">
			<span class="book-listing-text"> Books Listing</span>
		</div>
		<div class="col-6 col-md-4 add-book-div">
			<form class="d-flex" action="addbook">
				<button class="add-book-btn btn btn-primary" type="submit">
					Add Book</button>
			</form>
		</div>
	</div>
	<div class="container-fluid table-container" style="margin-top: 2rem;">
		<table class="table table-bordered"
			style="background-color: rgb(204, 255, 238);">
			<thead style="background-color: rgb(223, 128, 255);">
				<th class="table-heading" style="text-align: center;">Book ID</th>
				<th class="table-heading" style="text-align: center;">Book Name</th>
				<th class="table-heading" style="text-align: center;">Author</th>
				<th class="table-heading" style="text-align: center;">Data
					Added</th>
				<th class="table-heading" style="text-align: center;">Action</th>
			</thead>
			<c:forEach items="${bookList}" var="iter">
				<tbody style="background-color: rgb(204, 255, 238);">
					<tr>
						<td style="text-align: center;">${iter.getBookCode()}</td>
						<td style="text-align: center;">${iter.getBookName() }</td>
						<td style="text-align: center;">${iter.getBookAuthor() }</td>
						<td style="text-align: center;">${iter.getDateTime() }</td>
						<td style="text-align: center;">
							<form action="/editview/${iter.getBookCode()}" method="get" style="display: inline">
								<button type="submit" class="btn btn-primary">Edit</button>
							</form> &nbsp;&nbsp;
							<form action="/delete/${iter.getBookCode()}"  method="post" style="display: inline">
								<button type="submit" class="btn btn-primary">Delete</button>
							</form>
						</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>

</html>
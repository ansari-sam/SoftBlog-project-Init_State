<%@page import="com.soft.blog.helper.*,org.hibernate.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SoftBlog: Home</title>

<!-- CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/mycss.css" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.banner-background{
clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 64% 96%, 31% 91%, 0 94%, 0 0);

}
</style>

</head>
<body>
	<!-- Navbar -->
	<%@include file="Navbar.jsp"%>

	<!-- Banner -->
	<div class="container-fluid p-0 m-0">
		<div class="jumbotron jmb banner-background">
			<div class="container">
				<h3 class="display-3">Welcome to SoftBlog</h3>
				<p>welcome to technical blog, world of technology!!</p>
				<p>A programming language is a formal language comprising a set
					of instructions that produce various kinds of output. Programming
					languages are used in computer programming to implement algorithms</p>
				<p>There are programmable machines that use a set of specific
					instructions, rather than general programming languages.</p>
				<a href="register_page.jsp" class="btn btn-outline-light btn-lg">
					<span class="	fa fa-user-plus"></span>&nbsp;Start! Its free
				</a>
				<a href="login_page.jsp" class="btn btn-outline-light btn-lg">
					<span class="fa fa-user-circle-o fa-spin"></span>&nbsp;Login
				</a>
			</div>

		</div>
	</div>
	<!-- cards -->

	<div class="container">
		<div class="row mb-2">
			<div class="col-md-4">
				<div class="card"">
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary jmb">Read More ...</a>
					</div>
				</div>

			</div>
	<div class="col-md-4">
				<div class="card"">
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary jmb">Read More ...</a>
					</div>
				</div>

			</div>
				<div class="col-md-4">
				<div class="card"">
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary jmb">Read More ...</a>
					</div>
				</div>

			</div>

		</div>
		<div class="row mb-2">
			<div class="col-md-4">
				<div class="card"">
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary jmb">Read More ...</a>
					</div>
				</div>

			</div>
	<div class="col-md-4">
				<div class="card"">
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary jmb">Read More ...</a>
					</div>
				</div>

			</div>
				<div class="col-md-4">
				<div class="card"">
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary jmb">Read More ...</a>
					</div>
				</div>

			</div>

		</div>

	</div>


<!-- JavaScript -->
	<%@include file="js/js.jsp"%>
</body>
</html>
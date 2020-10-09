
<%
	User user = (User) session.getAttribute("currentUser");
	session.setAttribute("currentUser", user);
	if (user == null) {
		response.sendRedirect("login_page.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.soft.blog.entities.*"%>
<%@ page import="com.soft.blog.entities.*"%>
<%@ page isErrorPage="true"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile : SoftBlog</title>
<!-- CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/mycss.css" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.banner-background {
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 64% 96%, 31% 91%, 0 94%, 0 0);
}
</style>
</head>
<body>
	<!-- Navbar start -->

	<nav class="navbar navbar-expand-lg navbar-dark background-nav">
		<a class="navbar-brand" href="profile.jsp"><span
			class="fa fa-area-chart"> </span>&nbsp; Soft Blog</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="profile.jsp"><span class="fa fa-institution"> </span>&nbsp;
						Home <span class="sr-only">(current)</span> </a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <span class="fa fa-navicon"> </span>&nbsp;
						Categories
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Programming Language</a> <a
							class="dropdown-item" href="#">Projects</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Upcoming Projects</a>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="#"><span
						class="fa fa-address-card-o"> </span>&nbsp; Contact</a></li>


			</ul>

			<ul class="navbar-nav mr-right">
				<li class="nav-item"><a class="nav-link" data-toggle="modal"
					data-target="#profile-modal"><span class="fa fa-user-circle">
					</span>&nbsp; &nbsp;<%=user.getName()%></a></li>

				<li class="nav-item"><a class="nav-link" href="LogoutServlet">
						<span class="fa fa-user-circle-o"> </span>&nbsp;&nbsp; Logout
				</a></li>
			</ul>

		</div>
	</nav>

	<!-- Navbar end -->

	<!-- Modal for display profile details====start -->
	<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header jmb">
					<h5 class="modal-title" id="exampleModalLabel">SoftBlog</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
						<img alt="" src="img/user.png" class="img-fliud"
							style="max-height: 50px; border-radius: 50%;">
						<h5 class="modal-title" id="exampleModalLabel"><%=user.getName()%></h5>
						<div id="profile-details">
							<table class="table" style="text-align: justify;">
								<tbody>
									<tr>
										<th scope="row">ID :</th>
										<td><%=user.getUserId()%></td>
									</tr>
									<tr>
										<th scope="row">Email :</th>
										<td><%=user.getEmail()%></td>
									</tr>
									<tr>
										<th scope="row">Gender :</th>
										<td><%=user.getGender()%></td>
									</tr>
									<tr>
										<th scope="row">Status :</th>
										<td><%=user.getAbout()%></td>
									</tr>
									<tr>
										<th scope="row">Registered on :</th>
										<td><%=user.getAddedDate()%></td>
									</tr>
								</tbody>
							</table>

						</div>
						<!--profile edit  -->
						<div id="profile-edit" style="display: none;text-align:left;">
							<h3>Update your details</h3>
							<form>
							<div class="form-group">
									<label for="Id">Id</label> <input
										type="text" class="form-control"
										id="status" name="Id" value="">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input
										type="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter email">
								</div>
								<div class="form-group">
									<label for="status">Status</label> <input
										type="text" class="form-control"
										id="status" name="status" value="">
								</div>
								<button type="submit" class="btn btn-primary">Save</button>
							</form>

						</div>

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					<button id="edit-btn" type="button" class="btn btn-primary jmb">Edit</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal for display profile details====end -->

	<!-- JavaScript -->
	<%@include file="js/js.jsp"%>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {

			$('#edit-btn').click(function() {
				$('#profile-details').hide();
				$('#profile-edit').show();
			})

		});
	</script>
</body>
</html>
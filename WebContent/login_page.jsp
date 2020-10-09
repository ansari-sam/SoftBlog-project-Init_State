<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.soft.blog.entities.Massage"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login : SoftBlog</title>
<!-- CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/mycss.css" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.banner-background, .mn {
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 64% 96%, 31% 91%, 0 94%, 0 0);
}
</style>
</head>
<body>
	<!-- Navbar -->
	<%@include file="Navbar.jsp"%>
	<main class="d-flex align-items-center jmb mn" style="height: 80vh;">
		<div class="container">

			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-header jmb text-center">
							<span class="fa fa-user-plus fa-2x"></span> <br>
							<p>Login Here !!</p>
						</div>
						<%
							Massage m = (Massage) session.getAttribute("msg");
							if (m != null) {
						%>
						<div class="alert <%=m.getCssStyle()%>" role="alert"><%=m.getContent()%></div>

						<%
							session.removeAttribute("msg");
							}
						%>

						<div class="card-body">
							<form action="LoginServlet" method="post" style="color: black;">
								<div class="form-group">
									<label for="user_Email">Email address</label> <input
										type="email" required class="form-control" id="user_Email"
										aria-describedby="emailHelp" name="user_Email"
										placeholder="Enter email"> <small id="emailHelp"
										class="form-text text-muted">We'll never share your
										email with anyone else.</small>
								</div>
								<div class="form-group">
									<label for="user_Password">Password</label> <input
										type="password" required class="form-control"
										id="user_Password" name="user_Password" placeholder="Password">
								</div>
								<div class="container text-center">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>

	</main>



	<!-- JavaScript -->
	<%@include file="js/js.jsp"%>
</body>
</html>
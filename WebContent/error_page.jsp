<%@ page import="java.lang.*" %>
<%@ page isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sorry: Something went wrong !!</title>
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
	<div class="container text-center mt-4">
		<img alt="" src="img/error.png" class="img-fluid"
			style="max-height: 300px">
			<h3 class="display-3">Sorry! Something went wrong...</h3>
			<a href="index.jsp" class="btn btn-outline-primary btn-lg mt-3 jmb">Home</a>
	</div>
</body>
</html>
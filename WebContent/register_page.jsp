<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up : SoftBlog</title>
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
	<main class="d-flex align-items-center jmb mn"
		style="height: 800px; padding-bottom: 50px">
		<div class="container">

			<div class="row">
				<div class="col-md-6 offset-md-3">
					<div class="card">
						<div class="card-header jmb text-center" style="height: 80px;">
							<span class="fa fa-user fa-2x"></span> <br>
							<p>Register Here !!</p>
						</div>
						<div class="card-body">
						
						<!--form  -->
						
							<form id="reg-form" action="RegisterServlet" method="post"
								style="color: black;">
								<div class="form-group">
									<label for="user_name">User Name</label> <input type="text"
										class="form-control" id="user_name" name="user_name"
										placeholder="Enter your name">

								</div>

								<div class="form-group">
									<label for="user_email">Email address</label> <input
										type="email" class="form-control" id="user_email"
										aria-describedby="emailHelp" name="user_email"
										placeholder="Enter email"> <small id="emailHelp"
										class="form-text text-muted">We'll never share your
										email with anyone else.</small>
								</div>

								<div class="form-group">
									<label for="password">Password</label> <input type="password"
										class="form-control" id="password" name="password"
										placeholder="Password">
								</div>

								<div class="form-group">
									<label for="gender">Gender</label> <br> <input
										type="radio" id="gender" name="gender" value="Male">
									Male <input type="radio" id="gender" name="gender"
										value="Female"> Female
								</div>

								<div class="form-group">
									<label for=" About">About</label>
									<textarea name="user_details" rows="" cols=""
										class="form-control"> Write something about yourself</textarea>
								</div>

								<div class="form-check">
									<input type="checkbox" class="form-check-input"
										id="exampleCheck1" name="check"> <label
										class="form-check-label" for="exampleCheck1">Agree
										terms and conditions.</label>
								</div>
								<div class="container text-center" id="loader" style="display:none;">
								<span class="fa fa-refresh fa-spin fa-2x"></span>
								<h5>Please wait...</h5>
								</div>
								<div class="container text-center mt-2">
									<button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
									
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
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function (){
		
		console.log("Loaded.....")
		
		$('#reg-form').on('submit',function(event){
			event.preventDefault();
			
			let form=new FormData(this);
			
			$('#submit-btn').hide();
			$('#loader').show();
			//send to register servlet
			$.ajax({
				url:"RegisterServlet",
				type:'post',
				data: form,
				success: function(data,textStatus,jqXHR){
					console.log(data)
					$('#submit-btn').show();
					$('#loader').hide();
					if(data.trim()==='done'){
					swal("Registered Successfully...Redirecting to Login Page!!")
					.then((value) => {
					  window.location="login_page.jsp"
					});
					}else{
						swal(data);
					}
				},
				error: function(jqXHR,textStatus,errorThrown){
					console.log(jqXHR)
					$('#submit-btn').show();
					$('#loader').hide();
					swal("Sorry..Something went wrong !! Please try again.");
				},
				processData: false,
				contentType: false
			})
		})
		
	});
	
	</script>
</body>
</html>
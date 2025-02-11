<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp Here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<style>
a {
	position: relative;
	left: 575px;
	top: -40px;
	font-weight: bold;
}
</style>
</head>
<body>
	<section class="h-100 bg-dark">
		<form action="signup" method="post">

			<div class="container py-5 h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col">
						<div class="card card-registration my-4">
							<div class="row g-0">
								<div class="col-xl-6 d-none d-xl-block">
									<img
										src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
										alt="Sample photo" class="img-fluid"
										style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
								</div>
								<div class="col-xl-6">
									<div class="card-body p-md-5 text-black">
										<h3 class="mb-5 text-uppercase">Employee SignUp Page</h3>

										<div class="row">
											<div data-mdb-input-init class="form-outline mb-4">
												<div data-mdb-input-init class="form-outline">
													<input type="text" id="form3Example1n"
														class="form-control form-control-lg" name="name" /> <label
														class="form-label" for="form3Example1n">Name</label>
												</div>
											</div>

										</div>

										<div class="row">

											<div class="col-md-6 mb-4">
												<div data-mdb-input-init class="form-outline">
													<input type="email" id="form3Example1n1"
														class="form-control form-control-lg" name="email" /> <label
														class="form-label" for="form3Example1n1">Email</label>
												</div>
											</div>
											<div class="col-md-6 mb-4">
												<div data-mdb-input-init class="form-outline">
													<input type="password" id="form3Example1n1"
														class="form-control form-control-lg" name="pass" /> <label
														class="form-label" for="form3Example1n1">Password</label>
												</div>
											</div>
										</div>
										<div
											class="d-md-flex justify-content-start align-items-center mb-4 py-2">

											<h6 class="mb-0 me-4">Gender:</h6>

											<div class="form-check form-check-inline mb-0 me-4">
												<input class="form-check-input" type="radio" name="gender"
													id="femaleGender" value="Female" /> <label
													class="form-check-label" for="femaleGender">Female</label>
											</div>

											<div class="form-check form-check-inline mb-0 me-4">
												<input class="form-check-input" type="radio" name="gender"
													id="maleGender" value="Male" /> <label
													class="form-check-label" for="maleGender">Male</label>
											</div>

											<div class="form-check form-check-inline mb-0">
												<input class="form-check-input" type="radio" name="gender"
													id="otherGender" value="Other" /> <label
													class="form-check-label" for="otherGender">Other</label>
											</div>

										</div>

										<div data-mdb-input-init class="form-outline mb-4">
											<input type="text" id="form3Example8"
												class="form-control form-control-lg" name="address" /> <label
												class="form-label" for="form3Example8">Address</label>
										</div>


										<div class="row">
											<div class="col-md-6 mb-4">
												<div data-mdb-input-init class="form-outline">
													<input type="date" id="form3Example1n"
														class="form-control form-control-lg" name="doj" /> <label
														class="form-label" for="form3Example1n1">Date Of
														Joining</label>
												</div>
											</div>


											<div class="col-md-6 mb-4">
												<div data-mdb-input-init class="form-outline">
													<input type="date" id="form3Example1n1"
														class="form-control form-control-lg" name="dob" /> <label
														class="form-label" for="form3Example1n1">Date Of
														Birth</label>
												</div>
											</div>

										</div>


										<div data-mdb-input-init class="form-outline mb-4">
											<input type="tel" id="form3Example97"
												class="form-control form-control-lg" name="mob" /> <label
												class="form-label" for="form3Example97">Mobile
												Number</label>
										</div>

										<div class="d-flex justify-content-end pt-3">
											<input type="reset" data-mdb-button-init data-mdb-ripple-init
												class="btn btn-light btn-lg" value="Reset all"> <input
												type="submit" data-mdb-button-init data-mdb-ripple-init
												class="btn btn-warning btn-lg ms-2" value="Submit form">

										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<a href="Signin.jsp">Already a User ? Signin here</a>
	</section>

</body>
</html>
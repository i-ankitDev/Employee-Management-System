<%@page import="com.EMS.dto.Employee"%>
<%@page import="com.EMS.dao.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<section class="h-100 bg-dark">
		<form action="updateEmployees" method="post">

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
								<%
								EmployeeDao dao = new EmployeeDao();
								int id = Integer.parseInt(request.getParameter("id"));
								Employee employee = dao.findEmployeeById(id);
								%>
								<div class="col-xl-6">
									<div class="card-body p-md-5 text-black">
										<h3 class="mb-5 text-uppercase">Employee Edit Page</h3>

										<div class="row">
											<div class="col-md-6 mb-4">
												<div data-mdb-input-init class="form-outline">
													<input type="text" id="form3Example1m"
														class="form-control form-control-lg" name="id"
														value="<%=employee.getId()%>" readonly="readonly" /> <label
														class="form-label" for="form3Example1m">ID</label>
												</div>
											</div>

											<div class="col-md-6 mb-4">
												<div data-mdb-input-init class="form-outline">
													<input type="text" id="form3Example1m"
														class="form-control form-control-lg" name="name"
														value="<%=employee.getName()%>" /> <label
														class="form-label" for="form3Example1m">Name</label>
												</div>
											</div>

										</div>

										<div class="row">

											<div class="col-md-6 mb-4">
												<div data-mdb-input-init class="form-outline">
													<input type="email" id="form3Example1n1"
														class="form-control form-control-lg" name="email"
														value="<%=employee.getEmail()%>" /> <label
														class="form-label" for="form3Example1n1">Email</label>
												</div>
											</div>
											<div class="col-md-6 mb-4">
												<div data-mdb-input-init class="form-outline">
													<input type="password" id="form3Example1n1"
														class="form-control form-control-lg" name="pass"
														value="<%=employee.getPassword()%>" /> <label
														class="form-label" for="form3Example1n1">Password</label>
												</div>
											</div>
										</div>
										<div
											class="d-md-flex justify-content-start align-items-center mb-4 py-2">

											<h6 class="mb-0 me-4">Gender:</h6>

											<div class="form-check form-check-inline mb-0 me-4">
												<input class="form-control form-control-lg" type="text"
													name="gender" id="femaleGender"
													value="<%=employee.getGender()%>" readonly="readonly" />
											</div>


										</div>

										<div data-mdb-input-init class="form-outline mb-4">
											<input type="text" id="form3Example8"
												class="form-control form-control-lg" name="address"
												value="<%=employee.getAddress()%>" /> <label
												class="form-label" for="form3Example8">Address</label>
										</div>


										<div class="row">
											<div class="col-md-6 mb-4">
												<div data-mdb-input-init class="form-outline">
													<input type="date" id="form3Example1n"
														class="form-control form-control-lg" name="doj"
														value="<%=employee.getDoj()%>" /> <label
														class="form-label" for="form3Example1n1">Date Of
														Joining</label>
												</div>
											</div>


											<div class="col-md-6 mb-4">
												<div data-mdb-input-init class="form-outline">
													<input type="date" id="form3Example1n1"
														class="form-control form-control-lg" name="dob"
														value="<%=employee.getDob()%>" /> <label
														class="form-label" for="form3Example1n1">Date Of
														Birth</label>
												</div>
											</div>

										</div>


										<div data-mdb-input-init class="form-outline mb-4">
											<input type="tel" id="form3Example97"
												class="form-control form-control-lg" name="mob"
												value="<%=employee.getMob()%>" /> <label class="form-label"
												for="form3Example97">Mobile Number</label>
										</div>

										<div class="d-flex justify-content-end pt-3">
											<input type="submit" data-mdb-button-init
												data-mdb-ripple-init class="btn btn-light btn-lg"
												value="Cancel"> <input type="submit"
												data-mdb-button-init data-mdb-ripple-init
												class="btn btn-warning btn-lg ms-2" value="Update Details">

										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>

	</section>

</body>
</html>
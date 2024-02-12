<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Student Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addStudent">Add Student</a>
        </li>
        
    </div>
  </div>
</nav>

	<div class="conatiner">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<h3>Add Student</h3>
						<%-- <c:if test="${not empty msg }">
							<h5 class="text-success">${msg }</h5>
							<c:remove var="msg" />
						</c:if> --%>
					</div>
					<div class="card-body">
						<form action="createStudent" method="post">
							<div class="mb-3">
								<label>Student Name</label> <input type="text"
									name="studentName" class="form-control">
							</div>
							<div class="mb-3">
								<label>Student Address</label> <input type="text" name="studentAddress"
									class="form-control">
							</div>

							<div class="mb-3">
								<label>Student City</label> <input type="text" name="studnetCity"
									class="form-control">
							</div>

							<div class="mb-3">
								<label>Student State</label> <input type="text" name="studentState"
									class="form-control">
							</div>

							<div class="mb-3">
								<label>Student Zip Code</label> <input type="number"
									name="studentZipCode" class="form-control">
							</div>
							
							<button class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>

</body>
</html>
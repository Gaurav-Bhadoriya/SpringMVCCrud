<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Management System</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
<style>
    .navbar-brand {
        font-size: 1.8rem;
        font-weight: bold;
        color: #343a40;
    }

    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    .card {
        animation: fadeIn 1.0s ease-out;
        border-radius: 15px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    input[type="text"],
    input[type="number"],
    .btn {
        transition: all 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="number"]:focus {
        transform: scale(1.05);
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }

    .btn-primary {
        background-color: #6c5ce7;
        border-color: #6c5ce7;
    }

    .btn-primary:hover {
        background-color: #4a3ad1;
        border-color: #4a3ad1;
    }

    .btn-secondary {
        background-color: #fdcb6e;
        border-color: #fdcb6e;
        color: #343a40;
    }

    .btn-secondary:hover {
        background-color: #ffbe76;
        border-color: #ffbe76;
    }

    .card-header {
        background-color: #f8f9fa;
        border-bottom: none;
    }

    .card-title {
        color: #343a40;
        font-size: 2rem;
        font-weight: bold;
    }

    .card-body {
        background-color: #ffffff;
    }

    .card-body {
        padding: 40px;
    }

    .container {
        margin-top: 50px;
    }
</style>
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
                    <a class="nav-link active" aria-current="page" href="/StudentCruds/">Home</a>
                </li>
                <li class="nav-item"><a class="nav-link" href="addStudent">Add Student</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header text-center">
                    <h3 class="card-title">Add Student</h3>
                </div>
                <div class="card-body">
                    <form action="createStudent" method="post">
                        <div class="mb-3">
                            <label for="studentName" class="form-label">Student Name</label>
                            <input type="text" name="studentName" class="form-control" placeholder="Enter student name" required>
                        </div>
                        <div class="mb-3">
                            <label for="studentAddress" class="form-label">Student Address</label>
                            <input type="text" name="studentAddress" class="form-control" placeholder="Enter student address" required>
                        </div>

                        <div class="mb-3">
                            <label for="studentCity" class="form-label">Student City</label>
                            <input type="text" name="studentCity" class="form-control" placeholder="Enter student city" required>
                        </div>

                        <div class="mb-3">
                            <label for="studentState" class="form-label">Student State</label>
                            <input type="text" name="studentState" class="form-control" placeholder="Enter student state" required>
                        </div>

                        <div class="mb-3">
                            <label for="studentZipCode" class="form-label">Student Zip Code</label>
                            <input type="number" name="studentZipCode" class="form-control" placeholder="Enter student zip code" required>
                        </div>
                        <button class="btn btn-primary btn-block">Submit</button>
                        <a href="<%=request.getContextPath()%>/" class="btn btn-secondary btn-block">Back to Student List</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

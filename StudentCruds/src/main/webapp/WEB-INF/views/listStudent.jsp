<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Management System</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
    .table-responsive {
        overflow-x: auto;
    }

    .btn-sm {
        font-size: 0.8rem;
    }

    .btn-action {
        margin-right: 5px;
    }

    .btn-edit {
        background-color: #17a2b8;
        border-color: #17a2b8;
    }

    .btn-edit:hover {
        background-color: #138496;
        border-color: #138496;
    }

    .btn-delete {
        background-color: #dc3545;
        border-color: #dc3545;
    }

    .btn-delete:hover {
        background-color: #bd2130;
        border-color: #bd2130;
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
                    <a class="nav-link active" aria-current="page" href="#">Home</a> </li>
                    <li class="nav-item"><a class="nav-link" href="addStudent">Add Student</a></li>
            </div>
        </div>
    </nav>
    <div class="container mt-4">
        <h2 class="text-center mb-4">List Of Students</h2>
        <div class="table-responsive">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>City</th>
                        <th>State</th>
                        <th>Zip Code</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="student" items="${studentList}" varStatus="loop">
                        <tr class="${loop.index % 2 == 0 ? 'table-primary' : 'table-info'}">
                            <td>${loop.index + 1}</td>
                            <td>${student.studentName}</td>
                            <td>${student.studentAddress}</td>
                            <td>${student.studentCity}</td>
                            <td>${student.studentState}</td>
                            <td>${student.studentZipCode}</td>
                            <td>
                                <a href="editStudent?id=${student.studentId}" class="btn btn-sm btn-edit btn-action">Edit</a> 
                                <a href="deleteStudent?id=${student.studentId}" class="btn btn-sm btn-delete btn-action" onclick="return confirm('Are you sure you want to delete this student?')">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>

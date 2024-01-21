<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Spring Boot Navbar and Sidebar Example</title>
    <style>
        
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
              
        }
        
      

        .navbar {
            background-color: #333;
            padding: 15px;
            color: white;
            text-align: center;
        }

        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            background-color: #111;
            padding-top: 20px;
            padding-left: 10px;
            color: white;
        }

        .content {
            margin-left: 260px;
            padding: 20px;
        }
         .image-frame {
            width: 1352px;
            height: 625px;
            border: 1px solid #ccc; /* Optional: Add a border for better visibility */
            overflow: hidden; /* Optional: Hide any overflow beyond the frame */
        }

        /* Set the image to fill the frame while maintaining aspect ratio */
        .image-frame img {
            width: 100%;
            height: auto;
            display: block; /* Remove any default inline spacing */
        }
 
 

 

/* Set a style for the submit button */
 
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
</head>
<body>

<!-- <div class="navbar"> -->
    
 
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Emp Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addEmp">Add Employee</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="addDept">Add Department</a>
        </li>
         
      </ul>
       
      
       
    </div>
  </div>
</nav>
<!-- </div> -->

<div class="sidebar">
    <h2>Brudite Pvt. Ltd</h2>
   
    <h5> 
    <a href="home">Employee</a>
    </h5>
    <h5> 
    <a href="add">Department</a>
    </h5>
</div>
  <div class="image-frame">
    <!-- Add your page content here -->
    <img src="data:image/jpeg;base64,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" alt="Description of the image">
    
</div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update the info</title>
<script type="text/javascript">

document.addEventListener('DOMContentLoaded', function() {
    var form = document.getElementById('User_update');
    form.addEventListener('submit', function(event) {
    	var username = document.getElementById('username').value;
        var password = document.getElementById('pass').value;
        var confirmPassword = document.getElementById('cPass').value;
        var email = document.getElementById('email').value;
        var phoneNumber = document.getElementById('phone').value;
        var address = document.getElementById('address').value;

     	// Username validation
        if (username.trim() === '') {
            alert('Username cannot be empty.');
            event.preventDefault();
            return;
        }
        
        // Password validation
        if (password.length < 8) {
            alert('Password must be at least 8 characters long.');
            event.preventDefault();
            return;
        }

        // Password confirmation
        if (password !== confirmPassword) {
            alert('Passwords do not match.');
            event.preventDefault();
        }
        
     // Email validation
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        if (!emailPattern.test(email)) {
            alert('Invalid email address.');
            event.preventDefault();
            return;
        }

        // Phone number validation
        var phonePattern = /^\d{10}$/; // Assuming a 10-digit phone number
        if (!phonePattern.test(phoneNumber)) {
            alert('Invalid phone number.');
            event.preventDefault();
            return;
        }

        // Address validation (you can add your own criteria)
        if (address.length < 5) {
            alert('Address is too short.');
            event.preventDefault();
            return;
        }
    });
});


</script>
	<style>
        body {
		  	background-image: url('image-login.jpg');
		  	background-size: cover;
		  	background-position: center;
		  	background-repeat: no-repeat;
		  	background-attachment: fixed;
        }

        h1{
            color: #e50914;
            padding: 20px;
            font-size: 60px;
            font-family: Arial, sans-serif;
        }
        
        h2{
            font-size: 50px;
            color: #fff;
            padding: 20px;
            text-align:center;
            
        }

        table {
            margin: 0 auto;
            margin: 20px auto;
            backgroung-color:white;
        }

        table, tr, td {
            border-collapse: collapse;
            padding: 10px;
            text-align:center;
        }
        
        th, td {
            text-align: left;
            padding: 0 auto;
        }

        tr:hover {
            background-color: #ddd;
            color: black;
        }

        input[type="text"],
        input[type="password"] {
            width: 90%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
        
        form{
        	padding-bottom:20px;
        	margin-right:500px;
        	margin-left:500px;
        	background-color:black;
        	font-size: 20px;
        	width: 500px;
		    padding: 20px;
		    background-color: rgba(0, 0, 0, 0.6);
		    border: 1px solid #ddd;
		    border-radius: 5px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
		    color: #fff;
        }
        
        div{
        	text-align: center;
        }
    </style>
</head>
<body>
	<h1>WEBFLIX</h1>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String password = request.getParameter("pass");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
	%>
	<form action ="update" id="User_update" method ="post">
	<h2>Update Data</h2>
	<table>
	<tr>
		<td>User ID</td>
		<td><input type="text" name="uid" value="<%= id%>" readonly></td>
	</tr>
	<tr>
		<td>User Name</td>
		<td><input type="text" id="username" name="name" value="<%= name%>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" id="pass" name="pass" value="<%= password%>"></td>
	</tr>
	<tr>
		<td>Re-entered Password</td>
		<td><input type="password" id="cPass" name="cPass" value="<%= password%>"></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" id="email" name="email" value="<%= email%>"></td>
	</tr>
	<tr>
		<td>Phone Number</td>
		<td><input type="text" id="phone" name="phone" value="<%= phone%>"></td>
	</tr>
	<tr>
		<td>Address</td>
		<td><input type="text" id="address" name="address" value="<%= address%>"></td>
	</tr>

	</table>
	<br>
	<div>
	<input type="submit" name="submit" value="Update Data"><br>
	</div>
	</form>


</body>
</html>
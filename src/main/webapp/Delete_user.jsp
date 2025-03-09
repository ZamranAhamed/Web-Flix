<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete User Account</title>
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
            padding: 10px;
            text-align: left;
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
	
	
	<form action ="delete" method ="post">
	<h2>Delete Account</h2>
	<table>
	
	<tr>
		<td>User ID</td>
		<td><input type="text" name="uid" value="<%= id%>" readonly></td>
	</tr>
	<tr>
		<td>User Name</td>
		<td><input type="text" name="name" value="<%= name%>" readonly></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email%>" readonly></td>
	</tr>
	<tr>
		<td>Phone Number</td>
		<td><input type="text" name="phone" value="<%= phone%>" readonly></td>
	</tr>
	<tr>
		<td>Address</td>
		<td><input type="text" name="address" value="<%= address%>" readonly></td>
	</tr>

	</table>
	<br>
	<div>
	<input type="submit" name="submit" value="Delete My Account"><br>
	</div>
	</form>


</body>
</html>
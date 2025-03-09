<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>User Login</title>
	<script type="text/javascript">
	function checkEmptyValues()
	{
		//validate username
		if(document.getElementById('username').value=="")
			{
				alert("Plese Enter Your Username");
				return false;
			}
		//validate password
		if(document.getElementById('password').value=="")
		{
			alert("Plese Enter Your Password");
			return false;
		}
	}
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
        	margin-right:550px;
        	margin-left:550px;
        	background-color:black;
        	font-size: 20px;
        	width: 300px;
		    margin: 0 auto;
		    padding: 20px;
		    background-color: rgba(0, 0, 0, 0.6);
		    border: 1px solid #ddd;
		    border-radius: 5px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
		    color: #fff;
        }
        
        div{
        	color:#AAA1A1;
        	text-align: center;
        	font-size: 18px;
        }
        label{
        	color:#AAA1A1;
        	font-size: 15px;
        	text-align: left;
        }
        a{
        	color: #69FFFA;
        }
        
	</style>
</head>
<body>
	<h1>WEBFLIX</h1>
	<form action="login" method="post" onsubmit="return checkEmptyValues()">
	<h2>Sign In</h2>
	<table>
	  <tr>
		<td>UserName</td>
		<td><input type="text" name="uid" id="username" placeholder="Enter Your Username"></td>
	  </tr>
	  <tr>
		<td>Password</td>
		<td><input type="password" name="pass" id="password" placeholder="Enter Your Password"></td>
	  </tr>
	  
		</table>
		<label><input type="checkbox" name="checkbox" >remember me</label>
		<br>
		<br>
		<div>
		<input type="submit" name="submit" value="Login">
		</div>
		<br>
		<div>
		Dont't Have An Account? <a href="User_insert.jsp">Sign Up</a>
		</div>
	</form>
</body>
</html>
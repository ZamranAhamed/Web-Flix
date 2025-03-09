<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Registered User Account Information</title>
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

        input[type="button"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="button"]:hover {
            background-color: #45a049;
        }
        
        form{
        	padding-bottom:20px;
        	margin-right:300px;
        	margin-left:300px;
        	padding-rigt
        	background-color:black;
        	font-size: 20px;
        	width: 500px;
		    margin: 0 auto;
		    padding: 20px;
		    background-color: rgba(0, 0, 0, 0.6);
		    border: 1px solid #ddd;
		    border-radius: 5px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
		    color: #fff;
        }
        
        div{
        	text-align:center;
        }
        
</style>
</head>
<body>
<h1>WEBFLIX</h1>
	<form>
	<h2>User Account</h2>
	<table>
	
	<c:forEach var="user" items="${Uinfo}">
	
	<c:set var="id" value="${user.id}"/>
	<c:set var="username" value="${user.name}"/>
	<c:set var="password" value="${user.password}"/>
	<c:set var="email" value="${user.email}"/>
	<c:set var="phone" value="${user.phone}"/>
	<c:set var="address" value="${user.address}"/>
	
	<tr>
		<td>User ID</td>
		<td>${user.id}</td>
	</tr>
	<tr>
		<td>User Name</td>
		<td>${user.name}</td>
	</tr>
	<tr>
		<td>User Password</td>
		<td>${user.password}</td>
	</tr>
	<tr>
		<td>User Email</td>
		<td>${user.email}</td>
	</tr>
	<tr>
		<td>User Phone Number</td>
		<td>${user.phone}</td>
	</tr>
	<tr>
		<td>User Address</td>
		<td>${user.address}</td>
	</tr>
	
	</c:forEach>
	
	</table>
	
	<c:url value="Update_user.jsp" var="userupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${username}"/>
		<c:param name="pass" value="${password}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="address" value="${address}"/>
	</c:url>
	<div>
	<a href="${userupdate}">
	<br>
	<input type="button" name="Update" value="Update Data">
	</a>
	<br><br>
	<c:url value="Delete_user.jsp" var="userdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${username}"/>
		<c:param name="pass" value="${password}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="address" value="${address}"/>
	</c:url>
	
	<a href="${userdelete}">
	<input type="button" name="Delete" value="Delete My Account">
	</a>
	</div>	
	</form>
</body>
</html>
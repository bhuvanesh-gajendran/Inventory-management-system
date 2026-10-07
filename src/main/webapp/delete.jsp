<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete</title>
    <link type="image/x-icon" rel="icon" href="images/apple.png"/>
    <link type="text/css" rel="stylesheet" href="style.css"/> 
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp");
}%><section class="navbar">
    <div class="navbar-icon">
        <img class="icon" src="images/warehouse.png"/>
        <h1>Ware-House</h1>
    </div>
    <div class="navbar-select">
        <a class="navbar-select-opt" href="index.jsp">HOME</a>
        <a class="navbar-select-opt" href="add.jsp">ADD</a>
        <a class="navbar-select-opt" href="search.jsp">SEARCH</a>
        <a class="navbar-select-opt" href="update.jsp">UPDATE</a>
        <form action="logout" method="post">
        <input class = "navbar-select-opt" type="submit" value="LOG-OUT"/></form>
        <div class="navbar-select-user">Welcome, <i> ${username}</i></div>
    </div>
</section>
<section class="usage-type1">
    <div class="usage-type1-container">
        <h1>DELETE PRODUCT</h1>
        <form action="delete" method="post"> 
            <div class="type-input-container">
                <input class="type-input tpe" name="pid" type="text" placeholder="Product ID"/>
            </div>
            <div class="button-center">
                <button class="button1" type="submit">Delete</button>
            </div>   
        </form>     
    </div>
</section>

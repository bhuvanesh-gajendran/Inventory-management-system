<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Home</title>
    <link type="image/x-icon" rel="icon" href="images/apple.png"/>
    <link type="text/css" rel="stylesheet" href="style.css"/> 
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp");
}
%><section class="navbar">
    <div class="navbar-icon">
        <img class="icon" src="images/warehouse.png"/>
        <h1>Ware-House</h1>
    </div>
    <div class="navbar-select">
        <a class="navbar-select-opt" href="add.jsp">ADD</a>
        <a class="navbar-select-opt" href="delete.jsp">DELETE</a>
        <a class="navbar-select-opt" href="search.jsp">SEARCH</a>
        <a class="navbar-select-opt" href="update.jsp">UPDATE</a>
        <form action="logout" method="post">
        <input class = "navbar-select-opt" type="submit" value="LOG-OUT"/></form>
        <div class="navbar-select-user">Welcome, <i> ${username}</i></div>
    </div>
</section>
<% 
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsp1","root","bhuvanesh");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from wsp1.products");
%>
<section class="home-page-products">
<%	while(rs.next()){ %>
    <div class="home-page-products-container">
        <img src="<%=rs.getString(6)%>"/>
        <div class="product-name">Product ID - #<%=rs.getString(1)%></div>
        <div class="category"><%=rs.getString(3)%></div>
        <div class="product-name"><%=rs.getString(2)%></div>
        <div><%=rs.getString(5)%>(per.piece)</div>
        <div class="quantity">Quantity - <span class="quantity-no"><%=rs.getString(4)%></span></div>
    </div>
<%
	}
}
catch(Exception e){
out.println(e.getMessage());
}
%>
</section>
</body>
</html>
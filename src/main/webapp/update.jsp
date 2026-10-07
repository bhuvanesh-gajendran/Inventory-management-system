<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
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
        <a class="navbar-select-opt" href="index.jsp">HOME</a>
        <a class="navbar-select-opt" href="add.jsp">ADD</a>
        <a class="navbar-select-opt" href="delete.jsp">DELETE</a>
        <a class="navbar-select-opt" href="search.jsp">SEARCH</a>
        <form action="logout" method="post">
        <input class = "navbar-select-opt" type="submit" value="LOG-OUT"/></form>
        <div class="navbar-select-user">Welcome, <i>${username}</i></div>
    </div>
</section>
<section class="usage-type1">
    <div class="usage-type1-container">
        <h1>UPDATE PRODUCT</h1>
        <form action="update" method="post"> 
            <div class="type-input-container">
                <input class="type-input tpe" name="pid" type="text" placeholder="Product ID" required/>
                <input class="type-input tpe" name="pname" type="text" placeholder="Product Name" required/>
                <input class="type-input tpe" name="pprice" type="text" placeholder="Product price" required/>
                <input class="type-input tpe" name="pquantity" type="text" placeholder="Product Quantity" required/>
            </div>
            <div class="select">
                <label class="type-input" for="ptype">Product Type &nbsp; </label>
                <select name="ptype" id="ptype">
                    <optgroup label="Default">
                        <option value="stock" selected>Stock</option>
                    </optgroup>
                    <optgroup label="Others">
                        <option value="Instruments">Instruments</option>
                        <option value="Accessories">Accessories</option>
                    </optgroup>
                </select>
            </div>
            <div>
                <label class="type-input" for="pimage">Product Image &nbsp; </label>
                <input id="pimage" name="pimage" type="file" placeholder="Product Image" required/>
            </div>
            <div class="button-center">
                <button type="submit">Update</button>
            </div>   
        </form>     
    </div>
</section>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
    <link type="text/css" rel="stylesheet" href="style.css">
    <link type="image/x-icon" rel="icon" href="images/apple.png"/>
</head>
<body>
    <article>
        <section class="reglog-container">
        <h2>Login</h2>
        <form action="logval" method="post">
            <input type="text" name="username" placeholder="Enter Username" required/>
            <input type="password" name="password" placeholder="Enter Password" required/>
            <Button type="submit">Login</Button>
        </form> 
        <p>Don't have an Account? <a href="register.jsp">Register Now</a></p>
        </section>
    </article>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
    <link type="text/css" rel="stylesheet" href="style.css">
    <link type="image/x-icon" rel="icon" href="images/apple.png"/>
</head>
<body>
    <article>
        <section class="reglog-container">
        <h2>Registration</h2>
        <form action="regval" method="post">
            <input type="text" name="username" placeholder="Enter Username" required/>
            <input type="password" name="password" placeholder="Enter Password" required/>
            <input type="password" name="cpassword" placeholder="Enter Confirm Password" required/>
            <Button type="submit">Register</Button>
        </form> 
        <p>Already have a Account? <a href="login.jsp">Login Now</a></p>
        </section>
    </article>
</body>
</html>
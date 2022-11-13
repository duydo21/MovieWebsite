<%-- 
    Document   : signup
    Created on : Jul 9, 2022, 10:55:05 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/signup.css"/>
    </head>
    <body>
        <form action="signup" method="post">
            <div class="container">
                <h1>Sign up</h1>
                <p>Please fill the form to sign up.</p>
                <h3 style="color: red">${requestScope.message}</h3>
                <h3 style="color: #4CAF50">
                    ${requestScope.successful}
                    <a href="login.jsp" style="color: dodgerblue"> Login now!</a>
                </h3>
                <hr>

                <label for="email"><b>Email</b></label>
                <input type="text" placeholder="Email" name="mail" required>

                <label for="name"><b>Name</b></label>
                <input type="text" placeholder="Name" name="name" required>

                <label for="phone"><b>Phone</b></label>
                <input type="text" placeholder="Phone" name="phone" required>

                <label for="username"><b>Username</b></label>
                <input type="text" placeholder="Username" name="username" required>

                <label for="password"><b>Password</b></label>
                <input type="password" placeholder="Password" name="password" required>

                <label for="psw-repeat"><b>Confirm password</b></label>
                <input type="password" placeholder="Password" name="psw-repeat" required>

                <div class="clearfix">
                    <button type="submit" class="signupbtn">Sign Up</button>
                </div>
            </div>
            
        </form>
    </body>
</html>

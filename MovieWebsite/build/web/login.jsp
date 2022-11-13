<%-- 
    Document   : login
    Created on : Jul 9, 2022, 10:54:58 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/login.css"/>
    </head>
    <body>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>

        <div class="login">
            <h2 class="active"> Login </h2>
            <form action="login" method="post">
                <input type="text" class="text" name="username">
                <span>username</span>
                <br>
                <br>
                <input type="password" class="text" name="password">
                <span>password</span>
                <br>
                <h3 style="color: crimson" >${requestScope.message}</h3>
                <button class="signin">
                    Sign In
                </button>
                <br>
                Don't have an account? 
                <a href="signup.jsp">Sign up</a>
            </form>
        </div>
    </body>
</html>

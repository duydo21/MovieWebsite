<%-- 
    Document   : changePassword
    Created on : Jul 14, 2022, 2:09:41 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/signup.css"/>

    </head>
    <body>
        <c:set var="a" value="${sessionScope.user}"/>
        <c:if test="${a==null}">
            <%
                response.sendRedirect("login");
            %>
        </c:if>
        <form action="changepassword" method="post">
            <div class="container">
                <h1>Change password</h1>
                <h3 style="color: #4CAF50">
                    ${requestScope.ms}
                </h3>
                <h3 style="color: crimson" >${requestScope.err}</h3>
                <hr>

                <label for="password"><b>Password</b></label>
                <input type="password" placeholder="Password" name="password" required>

                <label for="password"><b>New password</b></label>
                <input type="password" placeholder="Password" name="newpassword" required>

                <label for="psw-repeat"><b>Confirm new password</b></label>
                <input type="password" placeholder="Password" name="p_repeat" required>

                <div class="clearfix">
                    <button type="submit" class="signupbtn">Submit</button>
                </div>
            </div>
        </form>
        <%@include file="footer.jsp"%>
    </body>
</html>

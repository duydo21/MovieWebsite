<%-- 
    Document   : delete
    Created on : Jul 18, 2022, 1:38:52 AM
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
        <form action="deletefilm" method="post">
            <div class="container">
                <h1>Delete film</h1>
                <p>Please fill the form </p>
                <h3 style="color: #4CAF50">
                    ${requestScope.ms}
                </h3>
                <hr>

                <label for="movieid"><b>Movie id</b></label>
                <input type="text" placeholder="Movie id" name="movieid" required>

                <div class="clearfix">
                    <button type="submit" class="signupbtn">Submit</button>
                </div>
            </div>
        </form>
        <%@include file="footer.jsp"%>
    </body>
</html>

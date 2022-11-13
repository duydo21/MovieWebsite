<%-- 
    Document   : update1
    Created on : Jul 18, 2022, 10:35:52 AM
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
        <c:set var="b" value="${requestScope.movieid}"/>
        <c:if test="${a==null}">
            <%
                response.sendRedirect("login");
            %>
        </c:if>
        <form action="updatefilm1" method="post">
            <div class="container">
                <h1>Update film ${requestScope.filmname}</h1>
                <p>Please fill the form </p>
                <h2 style="color: #4CAF50">
                    ${requestScope.ms}
                </h2>
                <hr>
                
                <input type="hidden" name="movieid" value="${b}">

                <label for="Is le"><b>Is le</b></label>
                <input type="text" placeholder="0 or 1" name="isle" required>

                <label for="Movie name"><b>Movie name</b></label>
                <input type="text" placeholder="Movie name" name="name" required>

                <label for="Publish year"><b>Publish year</b></label>
                <input type="text" placeholder="Publish year" name="year" required>

                <label for="Duration"><b>Duration</b></label>
                <input type="text" placeholder="Duration" name="duration" required>

                <label for="Country"><b>Country</b></label>
                <input type="text" placeholder="Country" name="country" required>

                <label for="Poster link"><b>Poster link</b></label>
                <input type="text" placeholder="Poster link" name="poster" required>

                <label for="Film link"><b>Film link</b></label>
                <input type="text" placeholder="Film link" name="film" required>

                <label for="Content"><b>Content</b></label>
                <input type="text" placeholder="Content" name="content" required>

                <label for="Movie owner"><b>Movie owner</b></label>
                <input type="text" placeholder="Movie owner" name="owner" required>

                <div class="clearfix">
                    <button type="submit" class="signupbtn">Submit</button>
                </div>
            </div>
        </form>
    </body>
</html>

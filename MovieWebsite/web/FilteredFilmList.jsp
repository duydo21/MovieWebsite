<%-- 
    Document   : FilteredFilmList
    Created on : Jul 17, 2022, 10:39:31 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <header>
        <%@include file="header.jsp"%>
    </header>
    <body>
        <h1 style="color: #FFF">${requestScope.ms}</h1>
        <br>
        <c:forEach var="o" items="${requestScope.list}">
            <a href="filminfo?msphim=${o.movieid}">
                <img src="${o.poster}" width="260px" height="400px" class="img-2 lazyload">
                <p style="color: whitesmoke">${o.moviename}</p>
            </a>
        </c:forEach>
    </body>
    <footer>
        <%@include file="footer.jsp"%>
    </footer>
</html>

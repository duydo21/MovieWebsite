<%-- 
    Document   : FilmInfo
    Created on : Jul 17, 2022, 9:59:42 AM
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
        <c:set var="a" value="${requestScope.film}"/>
        <img src="${a.poster}" width="260px" height="400px"><br>
        <h2 style="color: whitesmoke">${a.moviename}</h2>
        <br>
        <br>
        <h3 style="color: whitesmoke">Film information:</h3><br>
        <p style="color: whitesmoke">Movie name: ${a.moviename}</p><br>
        <p style="color: whitesmoke">Publish year: ${a.publishyear}</p><br>
        <p style="color: whitesmoke">Duration: ${a.duration} min</p><br>
        <p style="color: whitesmoke">Country: ${a.country}</p><br>
        <p style="color: whitesmoke">Movie publisher: ${a.movieowner}</p><br>
        <p style="color: whitesmoke">Content: ${a.getContent()}</p><br>
        <a style="text-height: auto" href="#">Xem phim</a>
        <br>

        <ul class="list film de cu">
            <h2 style="color: whitesmoke">Có thể bạn cũng muốn xem</h2><br>
            <c:forEach var="o" items="${requestScope.list}">
                <a style="color: blue" href="filmfilter?filmname=${o.moviename}">
                    ${o.moviename}
                </a>
                <br>
            </c:forEach>
        </ul>

    </body>
    <footer>
        <%@include file="footer.jsp"%>
    </footer>
</html>

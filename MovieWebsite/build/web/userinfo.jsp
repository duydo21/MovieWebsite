<%-- 
    Document   : userinfo
    Created on : Jul 12, 2022, 11:13:32 AM
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
        <c:set var="a" value="${sessionScope.user}"/>
        <c:if test="${a==null}">
            <%
                response.sendRedirect("login");
            %>
        </c:if>
        <h1 style="color: #FFF">User info page</h1>
        <h2 style="color: #FFF">Hello ${a.username}</h2>
        <h3 style="color: #FFF">Your info</h3>
        <p style="color: #FFF">Name: ${a.name}</p>
        <br>
        <p style="color: #FFF">Mail: ${a.mail}</p>
        <br>
        <p style="color: #FFF">Phone: ${a.phone}</p>
        <br>
        <p style="color: #FFF">Type: ${a.type}</p>
        <br>
        <p style="color: #FFF">Account balance: ${a.accBalance}</p>
        <br>
        <c:if test="${a!=null}">
            <c:if test="${a.type==1}">
            <a style="color: coral" href="addfilm">Add film</a>
            <br>
            <a style="color: coral" href="deletefilm">Delete film</a>
            <br>
            <a style="color: coral" href="updatefilm">Update film</a>
            <br>
            </c:if>
        </c:if>
        <a style="color: coral" href="changeinfo">Change info</a>
        <br>
        <a style="color: coral" href="changepassword">Change password</a>
        <br>
        <a style="color: coral" href="logout">Log out</a>
    </body>
    <footer>
        <%@include file="footer.jsp"%>
    </footer>
</html>

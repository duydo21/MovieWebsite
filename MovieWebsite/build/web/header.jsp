<%-- 
    Document   : header
    Created on : Jul 10, 2022, 4:02:08 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/mainmenu.css"/>
    </head>
    <body>
        <header>
            <img src="images/logo.png" onclick="window.location.href = 'home.jsp'" alt="logo" width="10%">
            <div class="login">
                <c:if test="${(sessionScope.user==null)}">
                    <span><a href="login">Login</a></span>
                    <span><a href="signup">Sign Up</a></span>
                </c:if>
                    <form class="search" style="width: fit-content" action="filmfilter">
                        <input type="text" name="filmname" placeholder="Tên phim" required>
                        <input type="submit" value="Search"/>
                    </form>
                <c:if test="${(sessionScope.user!=null)}">
                    <span style="text-align: center; width: fit-content;background-color: rgba(0, 0, 0, 0); color: white">Hello: ${sessionScope.user.name}</span>                    
                    <span onclick="window.location.href = 'userinfo.jsp?username=${sessionScope.user.username}'">Profile</span>
                    <form action="logout" method="get" class="logout">
                        <input type="submit" value="Log out">
                    </form>                  
                </c:if>
            </div>
            <div class="menu">
                <%--<c:if test="${(sessionScope.account!=null)}">--%>
                <div class="dropdown">
                    <button class="dropbtn" onclick="window.location.href = 'filmfilter?isle=1'">Phim lẻ</button>
                </div>
                <%--</c:if>--%>
                <div class="dropdown">
                    <button class="dropbtn" onclick="window.location.href = 'filmfilter?isle=0'">Phim bộ</button>
                </div>
                <div class="dropdown">
                    <button class="dropbtn">Thể loại</button>
                    <div class="dropdown-content">
                        <a href="filmfilter?cid=1">Kinh dị</a>
                        <a href="filmfilter?cid=2">Viễn tưởng</a>
                        <a href="filmfilter?cid=3">Hài</a>
                        <a href="filmfilter?cid=4">Hành động</a>
                        <a href="filmfilter?cid=5">Tâm lý - Tình cảm</a>
                        <a href="filmfilter?cid=6">Anime</a>
                        <a href="filmfilter?cid=7">Tài liệu</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropbtn">Quốc gia</button>
                    <div class="dropdown-content">
                        <a href="filmfilter?country=Vietnam">Việt Nam</a>
                        <a href="filmfilter?country=Japan">Nhật Bản</a>
                        <a href="filmfilter?country=Korea">Hàn Quốc</a>
                        <a href="filmfilter?country=America">Mỹ</a>
                        <a href="filmfilter?country=China">Trung Quốc</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropbtn">Năm SX</button>
                    <div class="dropdown-content">
                        <a href="filmfilter?year=2022">2022</a>
                        <a href="filmfilter?year=2021">2021</a>
                        <a href="filmfilter?year=2020">2020</a>
                        <a href="filmfilter?year=2019">2019</a>
                        <a href="filmfilter?year=2018">2018</a>
                        <a href="filmfilter?year=2017">2017</a>
                        <a href="filmfilter?year=2016">2016</a>
                        <a href="filmfilter?year=2015">2015</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropbtn">Nhà phát hành</button>
                    <div class="dropdown-content">
                        <a href="filmfilter?owner=Warner Bros">Warner Bros</a>
                        <a href="filmfilter?owner=Marvel">Marvel</a>
                        <a href="filmfilter?owner=Paramount Pictures">Paramount Pictures</a>
                        <a href="filmfilter?owner=Disney">Disney</a>
                        <a href="filmfilter?owner=Pixar">Pixar</a>
                        <a href="filmfilter?owner=20th Century Fox">20th Century Fox</a>
                        <a href="filmfilter?owner=Universal Pictures">Universal Pictures</a>
                        <a href="filmfilter?owner=Sony">Sony</a>
                        <a href="filmfilter?owner=Dream Works">Dream Works</a>
                        <a href="filmfilter?owner=Columbia Pictures">Columbia Pictures</a>
                    </div>
                </div>
            </div>
        </header>
    </body>
</html>

<%-- 
    Document   : home
    Created on : Jul 9, 2022, 11:06:40 PM
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
    <header>
        <%--<%@include file="header.jsp"%>--%>
        <jsp:include page="header.jsp"/>
    </header>
    <body>
        <c:set var="ad" value="${sessionScope.user}"/>
        <div class="row">
            <div class="col-1">
                <div id="main-content">
                    <div class="container">

                        <div class="block">
                            <div class="heading">
                                <a href="filmfilter?owner=Marvel">
                                    <h2 style="color: whitesmoke" class="caption">Phim Marvel</h2>
                                </a>
                                <a style="color: whitesmoke" class="seemore" href="filmfilter?owner=Marvel">Xem tất cả</a>
                            </div>
                            <ul class="list-film">
                                <li class="item small">
                                    <a href="filminfo?msphim=cm">
                                        <img src="images/FilmPoster/captain Marvel.jpeg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Captain Marvel</p>
                                    </a>
                                </li>
                                <li class="item small">
                                    <a href="filminfo?msphim=eg">
                                        <img src="images/FilmPoster/endgame.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Avengers: End game</p>
                                    </a>
                                </li>
                                <li class="item small">
                                    <a href="filminfo?msphim=drstr">
                                        <img src="images/FilmPoster/multiverse of madness.jpeg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Dr Strange: Multiverse of Madness</p>
                                    </a>
                                </li>
                                <li class="item small">
                                    <a href="filminfo?msphim=irm3">
                                        <img src="images/FilmPoster/Iron man 3.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Iron man 3</p>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="block">
                            <div class="heading">
                                <a href="filmfilter?owner=DC">
                                    <h2 style="color: whitesmoke" class="caption">Phim DC</h2>
                                </a>
                                <a style="color: whitesmoke" class="seemore" href="filmfilter?owner=DC">Xem tất cả</a>
                            </div>
                            <ul class="list-film">
                                <li class="item small">
                                    <a href="filminfo?msphim=jl">
                                        <img src="images/FilmPoster/Justice laegue.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Justice League</p>
                                    </a>
                                </li>
                                <li class="item small">
                                    <a href="filminfo?msphim=bm">
                                        <img src="images/FilmPoster/The dark knight rise.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Batman: The dark knight rise</p>
                                    </a>
                                </li>
                                <li class="item small">
                                    <a href="filminfo?msphim=bmvspm">
                                        <img src="images/FilmPoster/Batman_V_Superman_Dawn_Of_Justice.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Batman vs Superman: Dawn of justice</p>
                                    </a>
                                </li>
                                <li class="item small">
                                    <a href="filminfo?msphim=wm">
                                        <img src="images/FilmPoster/wonder woman.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Wonder woman</p>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="block">
                            <div class="heading">
                                <a href="filmfilter?cid=6">
                                    <h2 style="color: whitesmoke" class="caption">Phim Anime</h2>
                                </a>
                                <a style="color: whitesmoke" class="seemore" href="filmfilter?cid=6">Xem tất cả</a>
                            </div>
                            <ul class="list-film">
                                <li class="item small">
                                    <a href="filminfo?msphim=kny">
                                        <img src="images/FilmPoster/kimetsu no yaiba.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Kimetsu no Yaiba</p>
                                    </a>
                                </li>
                                <li class="item small">
                                    <a href="filminfo?msphim=jjk">
                                        <img src="images/FilmPoster/jujutsu kaisen.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Jujutsu Kaisen</p>
                                    </a>
                                </li>
                                <li class="item small">
                                    <a href="filminfo?msphim=aot">
                                        <img src="images/FilmPoster/attack on titan.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Attack on titan</p>
                                    </a>
                                </li>
                                <li class="item small">
                                    <a href="filminfo?msphim=opm">
                                        <img src="images/FilmPoster/one punch man.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">One punch man</p>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="block">
                            <div class="heading">
                                <a href="filmfilter?type=thinhhanh">
                                    <h2 style="color: whitesmoke" class="caption">Phim thịnh hành</h2>
                                </a>
                                <a style="color: whitesmoke" class="seemore" href="filmfilter?type=thinhhanh">Xem tất cả</a>
                            </div>
                            <ul class="list-film">
                                <li class="item small">
                                    <a href="filminfo?msphim=pl">
                                        <img src="images/FilmPoster/Pele.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Pele</p>
                                    </a>
                                </li>
                                <li class="item small">
                                    <a href="filminfo?msphim=mb">
                                        <img src="images/FilmPoster/Mat biec.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Mắt biếc</p>
                                    </a>
                                </li>
                                <li class="item small">
                                    <a href="filminfo?msphim=mk">
                                        <img src="images/FilmPoster/Maika.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">Maika</p>
                                    </a>
                                </li>
                                <li class="item small">
                                    <a href="filminfo?msphim=jw">
                                        <img src="images/FilmPoster/John Wick.jpg" width="260px" height="400px" class="img-2 lazyload">
                                        <p style="color: whitesmoke">John Wick</p>
                                    </a>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-2">
                <div class="block">
                    <div class="heading">
                        <h2 style="color: whitesmoke" class="caption">Phim đề cử</h2>
                    </div>
                    <ul class="list-film">
                        <li class="item small">
                            <a href="filminfo?msphim=aot">
                                <img src="images/FilmPoster/attack on titan.jpg" width="260px" height="400px" class="img-2 lazyload">
                                <p style="color: whitesmoke">Attack on Titan</p>
                            </a>
                        </li>
                        <li class="item small">
                            <a href="filminfo?msphim=grsby">
                                <img src="images/FilmPoster/anh em nha Grimsby.jpg" width="260px" height="400px" class="img-2 lazyload">
                                <p style="color: whitesmoke">Anh em nhà Grimsby</p>
                            </a>
                        </li>
                        <li class="item small">
                            <a href="filminfo?msphim=jjk">
                                <img src="images/FilmPoster/jujutsu kaisen.jpg" width="260px" height="400px" class="img-2 lazyload">
                                <p style="color: whitesmoke">Jujutsu kaisen</p>
                            </a>
                        </li>
                        <li class="item small">
                            <a href="filminfo?msphim=kny">
                                <img src="images/FilmPoster/kimetsu no yaiba.jpg" width="260px" height="400px" class="img-2 lazyload">
                                <p style="color: whitesmoke">Kimetsu no yaiba</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </body>
    <footer>
        <%@include file="footer.jsp"%>
    </footer>

</html>

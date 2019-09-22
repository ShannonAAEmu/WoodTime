<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shannon
  Date: 2019-09-21
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="ru">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>${siteTextRu[0].string}</title>

    <!-- Font Awesome Icons -->
    <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/> " rel="stylesheet" type="text/css">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic'
          rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="<c:url value="/resources/vendor/magnific-popup/magnific-popup.css"/> " rel="stylesheet">

    <!-- Theme CSS - Includes Bootstrap -->
    <link href="<c:url value="/resources/css/creative.min.css"/> " rel="stylesheet">

</head>

<body id="page-top">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <img height="60" width="60" src="<c:url value="/resources/img/wood-clock.png"/>" alt="">
            ${siteTextRu[0].string}</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto my-2 my-lg-0 text-uppercase">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#about">${siteTextRu[1].string}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#products">${siteTextRu[2].string}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#portfolio">${siteTextRu[3].string}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#contact">${siteTextRu[4].string}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="/woodtime/en">En</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="/woodtime/de">De</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Masthead -->
<header class="masthead">
    <div class="container h-100">
        <div class="row h-100 align-items-center justify-content-center text-center">
            <div class="col-lg-10 align-self-end">
                <h1 class="text-uppercase text-white font-weight-bold">${siteTextRu[5].string}</h1>
                <hr class="divider light my-4">
            </div>
            <div class="col-lg-8 align-self-baseline">
                <p class="text-white-75 font-weight-light mb-5">
                    ${siteTextRu[6].string}
                </p>
                <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">${siteTextRu[7].string}</a>
            </div>
        </div>
    </div>
</header>

<!-- About Section -->
<section class="page-section bg-primary" style="padding: 4rem 0" id="about">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 text-center">
                <h2 class="text-white mt-0">${siteTextRu[8].string}</h2>
                <hr class="divider light my-4">
                <p class="text-white-50 mb-4">${siteTextRu[9].string}
                    <br>${siteTextRu[10].string}
                <ol class="square">
                    <c:forEach items="${workshopsRu}" var="workshop">
                        <li>${workshop.name}</li>
                    </c:forEach>
                </ol>
                </p>
                <a class="btn btn-primary btn-xl js-scroll-trigger" href="#products">${siteTextRu[11].string}</a>
            </div>
        </div>
    </div>
</section>

<!-- Products Section -->
<section class="page-section"
         style="padding: 5rem 0; background-image: url(<c:url value="/resources/img/bg-products.jpg"/>);
                 background-repeat: no-repeat; background-size: cover; background-position: center center"
         id="products">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 text-right">
                <h2 class="text-center mt-0" style="color: white">${siteTextRu[12].string}</h2>
                <hr class="divider light my-4">
                <br>
                <ul class="square" style="width: auto; background: rgba(0, 0, 0, 0.5)">
                    <c:forEach items="${productsRu}" var="product">
                        <a class="js-scroll-trigger" href="#portfolio"><li style="color: #f8f9fa">${product.name}</li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</section>

<!-- Portfolio Section -->
<section id="portfolio">
    <div class="container-fluid p-0">
        <div class="row no-gutters">
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/woodenTables/liveAdge.jpg"/> ">
                    <img class="img-fluid" src="<c:url value="/resources/img/portfolio/woodenTables/liveAdge.jpg"/> " alt="">
                    <div class="portfolio-box-caption">
                        <div class="project-category text-white-50">
                            Category
                        </div>
                        <div class="project-name">
                            Project Name
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/woodenTables/liveAdgeDown.jpg"/> ">
                    <img class="img-fluid" src="<c:url value="/resources/img/portfolio/woodenTables/liveAdgeDown.jpg"/> " alt="">
                    <div class="portfolio-box-caption">
                        <div class="project-category text-white-50">
                            Category
                        </div>
                        <div class="project-name">
                            Project Name
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/woodenTables/liveAdgeSide.jpg"/> ">
                    <img class="img-fluid" src="<c:url value="/resources/img/portfolio/woodenTables/liveAdgeSide.jpg"/> " alt="">
                    <div class="portfolio-box-caption">
                        <div class="project-category text-white-50">
                            Category
                        </div>
                        <div class="project-name">
                            Project Name
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/fullsize/4.jpg"/> ">
                    <img class="img-fluid" src="<c:url value="/resources/img/portfolio/thumbnails/4.jpg"/> " alt="">
                    <div class="portfolio-box-caption">
                        <div class="project-category text-white-50">
                            Category
                        </div>
                        <div class="project-name">
                            Project Name
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/fullsize/5.jpg"/> ">
                    <img class="img-fluid" src="<c:url value="/resources/img/portfolio/thumbnails/5.jpg"/> " alt="">
                    <div class="portfolio-box-caption">
                        <div class="project-category text-white-50">
                            Category
                        </div>
                        <div class="project-name">
                            Project Name
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/fullsize/6.jpg"/> ">
                    <img class="img-fluid" src="<c:url value="/resources/img/portfolio/thumbnails/6.jpg"/> " alt="">
                    <div class="portfolio-box-caption p-3">
                        <div class="project-category text-white-50">
                            Category
                        </div>
                        <div class="project-name">
                            Project Name
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>
<!-- Call to Action Section -->
<section class="page-section bg-dark text-white">
    <div class="container text-center">
        <h2 class="mb-4">${siteTextRu[13].string}</h2>
        <a class="btn btn-primary btn-xl js-scroll-trigger" href="#contact">${siteTextRu[14].string}</a>
    </div>
</section>

<!-- Contact Section -->
<section class="page-section" id="contact">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 text-center">
                <h2 class="mt-0">${siteTextRu[15].string}</h2>
                <hr class="divider light my-4">
                <p class="text-muted mb-5">${siteTextRu[16].string}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
                <i class="fas fa-phone fa-3x mb-3 text-muted"></i>
                <div>+375-29-6-77-25-25
                    <a href="viber://add?number=%2B375296772525"><i class="fab fa-viber"></i></a>
                    <a href="tg://resolve?domain=+375296772525"><i class="fab fa-telegram"></i></a>
                    <a href="whatsapp://send?phone=375296772525"><i class="fab fa-whatsapp"></i></a>
                  <br>+375-29-3-088-088
                    <a href="viber://add?number=%2B375293088088"><i class="fab fa-viber"></i></a>
                    <a href="tg://resolve?domain=+375293088088"><i class="fab fa-telegram"></i></a>
                    <a href="whatsapp://send?phone=375293088088"><i class="fab fa-whatsapp"></i></a>
                </div>
            </div>
            <div class="col-lg-4 mr-auto text-center">
                <i class="fas fa-envelope fa-3x mb-3 text-muted"></i>
                <!-- Make sure to change the email address in anchor text AND the link below! -->
                <a class="d-block" href="mailto:info@woodtime.by">info@woodtime.by</a>
            </div>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="bg-light py-5">
    <div class="container">
        <div class="small text-center text-muted">Copyright &copy; 2019 - Start Bootstrap</div>
    </div>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/> "></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/> "></script>

<!-- Plugin JavaScript -->
<script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"/> "></script>
<script src="<c:url value="/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"/> "></script>

<!-- Custom scripts for this template -->
<script src="<c:url value="/resources/js/creative.min.js"/> "></script>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>fanLoot - Homepage</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>'/>
    <link rel="stylesheet" type="text/css" href='/Ecommerce/assets/css/style.css' />

</head>
<body class="bg-default">
    <c:choose>
        <c:when test = "${usuarioLogado != null}">
            <c:import url="/includes/header.jsp" charEncoding="UTF-8"/>
        </c:when>
        <c:otherwise>
            <c:import url="/includes/header-deslogado.jsp" charEncoding="UTF-8"/>
        </c:otherwise>
    </c:choose>
    <!-- Header-->
    <header class="bg-dark">
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
            </div>
            <div class="carousel-inner text-center">
                <div class="carousel-item active">
                    <img src="assets\img\banners\banner_fanloot.jpg" class="img-fluid" alt="Responsive image" width="80%">
                </div>
                <div class="carousel-item">
                    <img src="assets\img\banners\banner_fate.jpg" class="img-fluid" alt="Responsive image" width="80%">
                </div>
                <div class="carousel-item">
                    <img src="assets\img\banners\banner_halloween.jpg" class="img-fluid" alt="Responsive image" width="80%">
                </div>
                <div class="carousel-item">
                    <img src="assets\img\banners\banner_temos_que_pegar.jpg" class="img-fluid" alt="Responsive image" width="80%">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </header>

    <!-- Section-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row row-cols-xl-5">
                <div class="col mb-5">
                    <div class="col mb-5">
                        <div class="shadow ">
                            <img class="card-img-top" src="assets\img\nendoroids\Fushiguro_Megumi_Nendoroid.jpg" alt="...">
                            <div class="card-body">
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <div class="row">
                                      <div class="col col-md-auto">
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                      </div>
                                </div>
                                <div class="row">
                                    <div class="col-8">R$40.00</div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-primary btn-circle">
                                            <span class="material-icons md-18">add_shopping_cart</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="col mb-5">
                        <div class="shadow ">
                            <img class="card-img-top" src="assets\img\pelucias\rei_pelucia.jpg" alt="...">
                            <div class="card-body">
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <div class="row">
                                      <div class="col col-md-auto">
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                      </div>
                                </div>
                                <div class="row">
                                    <div class="col-8">R$40.00</div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-primary btn-circle">
                                            <span class="material-icons md-18">add_shopping_cart</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="col mb-5">
                        <div class="shadow ">
                            <img class="card-img-top" src="assets\img\nendoroids\levi_Nendoroid.jpg" alt="...">
                            <div class="card-body">
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <div class="row">
                                      <div class="col col-md-auto">
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                      </div>
                                </div>
                                <div class="row">
                                    <div class="col-8">R$40.00</div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-primary btn-circle">
                                            <span class="material-icons md-18">add_shopping_cart</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="col mb-5">
                        <div class="shadow">
                            <img class="card-img-top" src="assets\img\nendoroids\Lotte_Yanson_Nendoroid.jpg" alt="...">
                            <div class="card-body">
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <div class="row">
                                      <div class="col col-md-auto">
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                      </div>
                                </div>
                                <div class="row">
                                    <div class="col-8">R$40.00</div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-primary btn-circle">
                                            <span class="material-icons md-18">add_shopping_cart</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="col mb-5">
                        <div class="shadow">
                            <img class="card-img-top" src="assets\img\nendoroids\shikamaru_Nendoroid.jpg" alt="...">
                            <div class="card-body">
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <div class="row">
                                      <div class="col col-md-auto">
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                      </div>
                                </div>
                                <div class="row">
                                    <div class="col-8">R$40.00</div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-primary btn-circle">
                                            <span class="material-icons md-18">add_shopping_cart</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="col mb-5">
                        <div class="shadow">
                            <img class="card-img-top" src="assets\img\nendoroids\Tsuyu_Asui_Nendoroid.jpg" alt="...">
                            <div class="card-body">
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <div class="row">
                                      <div class="col col-md-auto">
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                      </div>
                                </div>
                                <div class="row">
                                    <div class="col-8">R$40.00</div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-primary btn-circle">
                                            <span class="material-icons md-18">add_shopping_cart</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="col mb-5">
                        <div class="shadow">
                            <img class="card-img-top" src="assets\img\nendoroids\yumeko_Nendoroid.jpg" alt="...">
                            <div class="card-body">
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <div class="row">
                                      <div class="col col-md-auto">
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                      </div>
                                </div>
                                <div class="row">
                                    <div class="col-8">R$40.00</div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-primary btn-circle">
                                            <span class="material-icons md-18">add_shopping_cart</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="col mb-5">
                        <div class="shadow ">
                            <img class="card-img-top" src="assets\img\nendoroids\todoroki_tiger_Nendoroid.jpg" alt="...">
                            <div class="card-body">
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <div class="row">
                                      <div class="col col-md-auto">
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                      </div>
                                </div>
                                <div class="row">
                                    <div class="col-8">R$40.00</div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-primary btn-circle">
                                            <span class="material-icons md-18">add_shopping_cart</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="col mb-5">
                        <div class="shadow ">
                            <img class="card-img-top" src="assets\img\toga_himiko.jpg" alt="...">
                            <div class="card-body">
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <div class="row">
                                      <div class="col col-md-auto">
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                      </div>
                                </div>
                                <div class="row">
                                    <div class="col-8">R$40.00</div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-primary btn-circle">
                                            <span class="material-icons md-18">add_shopping_cart</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="col mb-5">
                        <div class="shadow ">
                            <img class="card-img-top" src="assets\img\pelucias\miku_pelucia.jpg" alt="...">
                            <div class="card-body">
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <div class="row">
                                      <div class="col col-md-auto">
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                        <span class="material-icons md-18">star_rate</span>
                                      </div>
                                </div>
                                <div class="row">
                                    <div class="col-8">R$40.00</div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-primary btn-circle">
                                            <span class="material-icons md-18">add_shopping_cart</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Start Footer -->
    <c:import url="/includes/footer.jsp" charEncoding="UTF-8"/>
    <!-- Bootstrap core JS-->
    <script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
     
    </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>

<head>
    <meta charset="UTF-8" />
    <title>LootCommerce - Homepage</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>'/>
    <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/main.css' />

</head>

<body class="bg-default">
    <c:choose>
        <c:when test = "${usuarioLogado != null}">
            <c:choose>
                <c:when test = "${usuarioLogado.tipoUsuario == 'CLIENTE'}">
                    <c:import url="/includes/header.jsp" charEncoding="UTF-8"/>
                </c:when>
                <c:otherwise>
                    <c:import url="/includes/header-Administrador.jsp" charEncoding="UTF-8"/>
                </c:otherwise>
            </c:choose>
        </c:when>
        <c:otherwise>
            <c:import url="/includes/header-deslogado.jsp" charEncoding="UTF-8"/>
        </c:otherwise>
    </c:choose>
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
                    <img src="\LootCommerce\assets\img\banners\banner_fanloot.png" class="img-fluid" width="100%">
                </div>
                <div class="carousel-item">
                    <img src="\LootCommerce\assets\img\banners\banner_fate.png" class="img-fluid" width="100%">
                </div>
                <div class="carousel-item">
                    <img src="\LootCommerce\assets\img\banners\banner_halloween.png" class="img-fluid" width="100%">
                </div>
                <div class="carousel-item">
                    <img src="\LootCommerce\assets\img\banners\banner_temos_que_pegar.png" class="img-fluid" width="100%">
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

    <div class="container mt-3 mb-3 bg-white p-4">

        <!--Categorias-->
        <div class="row mx-5">
            <div class="col-md-4">
                <div class="card">
                    <img alt="Pelucias" src="\LootCommerce\assets\img\categorias\pelucias.jpg">
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img alt="Nendoroids" src="\LootCommerce\assets\img\categorias\nendoroids.jpg">
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img alt="Figures" src="\LootCommerce\assets\img\categorias\figures.jpg">
                </div>
            </div>
        </div>

        <div id="recomendados" data-bs-ride="carousel" class="carousel slide p-5">
            <h4>Baseado nas suas últimas compras</h4>
            <button data-bs-target="#recomendados" data-bs-slide="prev" type="button"
                class="carousel-control-prev justify-content-start ">
                <span class="material-icons bg-dark">keyboard_arrow_left</span>

            </button>
            <div class="carousel-inner">
                <div class="carousel-item carousel-item-next carousel-item-start">
                    <div class="row row-cols-xl-5">
                        <div class="col mb-3">
                            <div class="card produto">
                                <img class="p-3" src="\LootCommerce\assets\img\nendoroids\Tsuyu_Asui_Nendoroid.jpg" alt="...">
                                <div class="card-body pt-0">
                                    <h6>Nendoroid</h6>
                                    <h5 class="fw-bolder">Fancy Product</h5>
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
                        <div class="col mb-3">
                            <div class="card produto">
                                <img class="p-3" src="\LootCommerce\assets\img\nendoroids\yumeko_Nendoroid.jpg" alt="...">
                                <div class="card-body pt-0">
                                    <h6>Nendoroid</h6>
                                    <h5 class="fw-bolder">Fancy Product</h5>
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
                        <div class="col mb-3">
                            <div class="card produto">
                                <img class="p-3" src="\LootCommerce\assets\img\nendoroids\todoroki_tiger_Nendoroid.jpg" alt="...">
                                <div class="card-body pt-0">
                                    <h6>Nendoroid</h6>
                                    <h5 class="fw-bolder">Fancy Product</h5>
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
                        <div class="col mb-3">
                            <div class="card produto">
                                <img class="p-3" src="\LootCommerce\assets\img\toga_himiko.jpg" alt="...">
                                <div class="card-body pt-0">
                                    <h6>Nendoroid</h6>
                                    <h5 class="fw-bolder">Fancy Product</h5>
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
                        <div class="col mb-3">
                            <div class="card produto">
                                <img class="p-3" src="\LootCommerce\assets\img\pelucias\miku_pelucia.jpg" alt="...">
                                <div class="card-body pt-0">
                                    <h6>Nendoroid</h6>
                                    <h5 class="fw-bolder">Fancy Product</h5>
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
                <div class="carousel-item active carousel-item-start">
                    <div class="row row-cols-xl-5">
                        <div class="col mb-3">
                            <div class="card produto">
                                <img class="p-3" src="\LootCommerce\assets\img\nendoroids\Fushiguro_Megumi_Nendoroid.jpg" alt="...">
                                <div class="card-body pt-0">
                                    <h6>Nendoroid</h6>
                                    <h5 class="fw-bolder">Fancy Product</h5>
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
                        <div class="col mb-3">
                            <div class="card produto">
                                <img class="p-3" src="\LootCommerce\assets\img\pelucias\rei_pelucia.jpg" alt="...">
                                <div class="card-body pt-0">
                                    <h6>Nendoroid</h6>
                                    <h5 class="fw-bolder">Fancy Product</h5>
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
                        <div class="col mb-3">
                            <div class="card produto">
                                <img class="p-3" src="\LootCommerce\assets\img\nendoroids\levi_Nendoroid.jpg" alt="...">
                                <div class="card-body pt-0">
                                    <h6>Nendoroid</h6>
                                    <h5 class="fw-bolder">Fancy Product</h5>
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
                        <div class="col mb-3">
                            <div class="card produto">
                                <img class="p-3" src="\LootCommerce\assets\img\nendoroids\Lotte_Yanson_Nendoroid.jpg" alt="...">
                                <div class="card-body pt-0">
                                    <h6>Nendoroid</h6>
                                    <h5 class="fw-bolder">Fancy Product</h5>
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
                        <div class="col mb-3">
                            <div class="card produto">
                                <img class="p-3" src="\LootCommerce\assets\img\nendoroids\shikamaru_Nendoroid.jpg" alt="...">
                                <div class="card-body pt-0">
                                    <h6>Nendoroid</h6>
                                    <h5 class="fw-bolder">Fancy Product</h5>
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
            <div>
                <button type="button" data-bs-target="#recomendados" data-bs-slide="next"
                    class="carousel-control-next justify-content-end">
                    <span class="material-icons bg-dark">keyboard_arrow_right</span>
                </button>
            </div>
        </div>
    </div>

    <c:import url="/includes/footer.jsp" charEncoding="UTF-8" />

    <script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>fanLoot - Homepage</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>'/>
    <link rel="stylesheet" type="text/css" href='assets/css/style.css'/>
</head>
<body>
    <!-- Navigation-->
    <c:import url="/includes/header.jsp" charEncoding="UTF-8"/>
    <!-- Header-->
    <header class="bg-dark">
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner text-center">
                <div class="carousel-item active text-center">
                    <img src="assets\images\promocao_exemplo.jpg" class="img-fluid" alt="Responsive image">
                </div>
                <div class="carousel-item">
                    <img src="assets\images\promocao_exemplo.jpg" class="img-fluid" alt="Responsive image">
                </div>
                <div class="carousel-item">
                    <img src="assets\images\promocao_exemplo.jpg" class="img-fluid" alt="Responsive image">
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
            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="assets\images\Fushiguro_Megumi_Nendoroid.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name -->
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <!-- Product price-->
                                R$40.00
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-3 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Adicionar ao carrinho</a></div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="assets\images\rei_pelucia.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name -->
                                <h5 class="fw-bolder">Special Item</h5>
                                <!-- Product reviews-->
                                <div class="d-flex justify-content-center small text-warning mb-2">
                                </div>
                                <!-- Product price-->
                                <span class="text-muted text-decoration-line-through">R$20.00</span>
                                R$18.00
                            </div>
                        </div>
                        <!-- Product actions-->
                            <div class="card-footer p-3 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Adicionar ao carrinho</a></div>
                            </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="assets\images\levi_Nendoroid.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name -->
                                <h5 class="fw-bolder">Sale Item</h5>
                                <!-- Product price-->
                                <span class="text-muted text-decoration-line-through">R$50.00</span>
                                R$25.00
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-3 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Adicionar ao carrinho</a></div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="assets\images\Lotte_Yanson_Nendoroid.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name -->
                                <h5 class="fw-bolder">Popular Item</h5>
                                <!-- Product reviews-->
                                <div class="d-flex justify-content-center small text-warning mb-2">
                                </div>
                                <!-- Product price-->
                                R$40.00
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-3 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Adicionar ao carrinho</a></div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="assets\images\shikamaru_Nendoroid.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name -->
                                <h5 class="fw-bolder">Sale Item</h5>
                                <!-- Product price-->
                                <span class="text-muted text-decoration-line-through">R$50.00</span>
                                R$25.00
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-3 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Adicionar ao carrinho</a></div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="assets\images\Tsuyu_Asui_Nendoroid.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name -->
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <!-- Product price-->
                                R$280.00
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-3 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Adicionar ao carrinho</a></div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="assets\images\yumeko_Nendoroid.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name -->
                                <h5 class="fw-bolder">Special Item</h5>
                                <!-- Product reviews-->
                                <div class="d-flex justify-content-center small text-warning mb-2">
                                </div>
                                <!-- Product price-->
                                <span class="text-muted text-decoration-line-through">R$20.00</span>
                                R$18.00
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-3 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Adicionar ao carrinho</a></div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="assets\images\todoroki_tiger_Nendoroid.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name -->
                                <h5 class="fw-bolder">Popular Item</h5>
                                <!-- Product reviews-->
                                <div class="d-flex justify-content-center small text-warning mb-2">
                                </div>
                                <!-- Product price-->
                                R$40.00
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-3 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Adicionar ao carrinho</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Start Footer -->
    <c:import url="/includes/footer.jsp" charEncoding="UTF-8"/>
    <!-- End Footer -->
    <!-- Bootstrap core JS-->
    <script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
    </body>
</html>

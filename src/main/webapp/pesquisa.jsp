<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8" />
    <title>Carrinho</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
    <link rel="stylesheet" type="text/css"
        href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
    <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/style.css' />
</head>

<body class="bg-default">
    <!-- Navigation-->
    <c:import url="/includes/header.jsp" charEncoding="UTF-8" />

    <main class="wrapper container  ">
        <div class="row mt-3">
            <div class="col-xl-3 col-lg-4 col-md-5">
                <div class="card">
                    <h2>
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#flush-collapseOne" aria-expanded="false"
                            aria-controls="flush-collapseOne">Categorias</button>
                    </h2>
                    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                        data-bs-parent="#accordionFlushExample" style="">
                        <a href="#" class="nav-link">Nendoroid (12)</a><a href="#" class="nav-link">Pelúcia (2)</a>
                    </div>
                </div>
                <div class="card">
                    <h2>
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#flush-collapseOne" aria-expanded="false"
                            aria-controls="flush-collapseOne">Categorias</button>
                    </h2>
                    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
                        data-bs-parent="#accordionFlushExample" style="">
                        <a href="#" class="nav-link">Nendoroid (12)</a><a href="#" class="nav-link">Pelúcia (2)</a>
                    </div>
                </div>

            </div>

            <div class="col-lg-9 ">
                <div class="row mb-4 mt-4">
                    <div class="col-12">
                        <h6 class="mb-0"><span class="text-primary">28 produtos encontrados</span></h6>
                    </div>
                </div>
                <hr>
                <div class="mb-4 d-sm-flex ">
                    <div>
                        <form class="form-inline">
                            <div class="form-group mb-0">
                                <label class="justify-content-start mr-2">Sort by :</label>
                                <div class="short-by">
                                    <select class="form-control basic-select select2-hidden-accessible"
                                        data-select2-id="1" tabindex="-1" aria-hidden="true">
                                        <option data-select2-id="3">Newest</option>
                                        <option>Oldest</option>
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row row-cols-xl-4">
                    <div class="col mb-3 ">
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
                <div class="row">
                    <div class="col-12 text-center m-4">
                        <ul class="pagination justify-content-center mb-0">
                            <li class="page-item disabled"> <span class="page-link">Anterior</span> </li>
                            <li class="page-item active" aria-current="page"><span class="page-link">1 </span> </li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">...</a></li>
                            <li class="page-item"><a class="page-link" href="#">25</a></li>
                            <li class="page-item"> <a class="page-link" href="#">Próximo</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <c:import url="/includes/footer.jsp" charEncoding="UTF-8" />

</body>

<script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
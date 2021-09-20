<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8"/>
    <title>Pesquisa</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
    <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/main.css' />
</head>

<body class="bg-default">

    <c:import url="/includes/header.jsp" charEncoding="UTF-8" />

    <main class="wrapper container">

        <div class="row mt-4 bg-white rounded p-4 mb-3">
            <div class="col-md-12 p-3 border rounded m-3">1-10 de 50 resultados para
                <strong class="text-muted">"palavra pesquisada"</strong>
            </div>
            <div class="col-xl-3 col-lg-4 col-md-5">
                <ul class="list-group mt-4">
                    <h5 class="fw-bolder">Categoria</h5>
                    <li class="d-flex justify-content-between">
                        <a class="text-decoration-none">Nendoroid</a>
                    </li>
                    <li class="d-flex justify-content-between">
                        <a class="text-decoration-none">Pelúcia</a>
                    </li>
                    <li class="d-flex justify-content-between">
                        <a class="text-decoration-none">Figure</a>
                    </li>
                    <li class="d-flex justify-content-between">
                        <a class="text-decoration-none">Chaveiro</a>
                    </li>
                </ul>
                <ul class="list-group mt-4">
                    <h5 class="fw-bolder">Preço</h5>
                    <li class="d-flex  justify-content-between">
                        <a class="text-decoration-none">Até $50,00</a>
                        <h6 class="text-muted align-middle">(5)</h6>
                    </li>
                    <li class="d-flex justify-content-between">
                        <a class="text-decoration-none">R$ 50,00 a R$ 150,00 </a>
                        <h6 class="text-muted">(5)</h6>
                    </li>
                    <li class="d-flex justify-content-between">
                        <a class="text-decoration-none">Mais de R$ 150,00</a>
                        <h6 class="text-muted">(5)</h6>
                    </li>
                    <li class="d-flex justify-content-between ">
                        <div class="input-group">
                            <input class="form-control" placeholder="R$ min" type="text">
                            <span class="input-group-text">-</span>
                            <input type="text" class="form-control" placeholder="R$ max">
                        </div>
                    </li>
                </ul>
            </div>

            <div class="col-lg-9">
                <div class="row mb-4 mt-4">
                    <div class="col-12">
                        <div class="btn-group float-end">
                            <button type="button" data-bs-toggle="dropdown" aria-expanded="false"
                                class="btn btn-primary dropdown-toggle" id="ordenarResultados">Ordenar por</button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="">
                                <li><a class="dropdown-item" href="#">Mais relevantes</a></li>
                                <li><a class="dropdown-item" href="#">Maior preço</a></li>
                                <li><a class="dropdown-item" href="#">Menor preço</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row row-cols-xl-4">
                    <div class="col mb-3 ">
                        <div class="card produto">
                            <img class="p-3" src="\LootCommerce\assets\img\nendoroids\Fushiguro_Megumi_Nendoroid.jpg"
                                alt="...">
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
                            <img class="p-3" src="\LootCommerce\assets\img\nendoroids\Lotte_Yanson_Nendoroid.jpg"
                                alt="...">
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
                            <img class="p-3" src="\LootCommerce\assets\img\nendoroids\shikamaru_Nendoroid.jpg"
                                alt="...">
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
                            <img class="p-3" src="\LootCommerce\assets\img\nendoroids\Tsuyu_Asui_Nendoroid.jpg"
                                alt="...">
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
                            <img class="p-3" src="\LootCommerce\assets\img\nendoroids\todoroki_tiger_Nendoroid.jpg"
                                alt="...">
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
                                <h6>Pelúcia</h6>
                                <a class="fw-bolder h5 text-decoration-none" href="/LootCommerce/produto.jsp">Hatsune</a>
                                <div class="row">
                                    <div class="col-8">R$40.00</div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-primary btn-circle" id="adicionarCarrinhoBtn">
                                            <span class="material-icons md-18">add_shopping_cart</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">«</span>
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                        <span aria-hidden="true">»</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <div style="z-index: 11" class="position-fixed bottom-0 end-0 p-2">
            <div id="liveToast" role="alert" aria-live="assertive" aria-atomic="true" class="toast fade hide">
                <div class="toast-body">
                <img src="\LootCommerce\assets\img\pelucias\miku_pelucia.jpg" alt="..." class="rounded me-2 w-25">
                </div>
                <div class="toast-header">
                <strong class="me-auto">Hatsune</strong><small>adicionado ao carrinho</small>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
            </div>
        </div>
    </main>

</body>

<c:import url="/includes/footer.jsp" charEncoding="UTF-8"/>

<script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
<script src='<c:url value="/assets/js/carrinho.js"/>'></script>

</html>
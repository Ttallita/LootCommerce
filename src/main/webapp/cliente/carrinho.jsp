<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <main class="wrapper container mt-3">
        <div class="row mt-4 bg-white rounded p-4">

            <div class="col-lg-9">
                <h3 class="mb-3 fw-bold">Carrinho
                    <strong class="text-muted h4">(1)</strong>
                </h3>
                <div>

                    <div class="container">
                        <div class="row  border-bottom">
                            <div class="col-3">
                                <div class="card produto mb-3">
                                    <img alt="produto" src="\LootCommerce\assets\img\toga_himiko.jpg" class="p-2">
                                </div>
                            </div>
                            <div class="col">
                                <h4 class="mb-3">
                                    <div class="text-muted h6">Categoria</div>Nome
                                </h4><input class="form-control" type="number">10 disponíveis<h4>R$ 100,00</h4>
                                <div class="d-flex justify-content-between mb-3">
                                    <a class="text-decoration-none">Excluir</a><a class="text-decoration-none">Comprar
                                        agora
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 order-md-last">
                <div class="row vstack mt-5">
                    <div class="dropdown mb-3">
                        <a href="#" data-bs-toggle="dropdown" aria-expanded="false"
                            class="text-decoration-none dropdown-toggle">Envio para casa de Samuel Silva</a>
                        <ul aria-labelledby="navbarDropdown" class="dropdown-menu">
                            <li><a href="/LootCommerce/clientes/perfil?operacao=listar" class="dropdown-item">Envio para
                                    casa de Samuel Silva</a></li>
                            <li><a href="#" class="dropdown-item">Adicionar endereço</a></li>

                        </ul>
                    </div>
                    <div class="">
                        <div class="container border rounded py-4">
                            <strong class="text-muted">Adicionar cupom</strong>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" aria-label="Recipient's username"
                                    aria-describedby="button-addon2" placeholder="Nome cupom">
                                <button class="btn btn-outline-secondary" type="button"
                                    id="button-addon2">Aplicar</button>
                            </div>
                            <div class="toast align-items-center text-white bg-primary border-0 fade show" role="alert"
                                aria-live="assertive" aria-atomic="true">
                                <div class="d-flex">
                                    <div class="toast-body">PROMOCAO</div>
                                    <button type="button" class="btn-close btn-close-white me-2 m-auto"
                                        data-bs-dismiss="toast" aria-label="Close"></button>
                                </div>
                            </div>
                        </div>

                        <div class="container border rounded mt-3 py-4">
                            <ul class="list-group">

                                <li class="d-flex justify-content-between">
                                    <strong class="text-muted">Total carrinho:</strong>
                                    <strong>$0.00</strong>
                                </li>
                                <li class="d-flex justify-content-between">
                                    <strong class="text-muted">Frete:</strong>
                                    <strong>$0.00</strong>
                                </li>
                                <li class="d-flex justify-content-between">
                                    <strong class="text-muted">Desconto:</strong>
                                    <strong>- R$ 0.00</strong>
                                </li>
                                <li class="d-flex justify-content-between py-3">
                                    <strong class="text-muted">Total:</strong>
                                    <h5 class="font-weight-bold">R$ 400,00</h5>
                                </li>
                                <a href="#" class="btn btn-primary  rounded-pill py-2 ">Comprar carrinho</a>
                            </ul>
                        </div>


                    </div>
                </div>

            </div>
        </div>
    </main>

</body>

<script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>

</html>
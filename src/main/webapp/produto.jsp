<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8" />
    <title>Produto</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
    <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/main.css' />
</head>

<body class="bg-default">

    <c:import url="/includes/header.jsp" charEncoding="UTF-8"/>

    <main class="wrapper container mt-3">
        <div class="row mt-4 bg-white rounded p-4 mb-3">
            <div class="col-md-4">
                <div class="card  mb-3">
                    <img alt="produto" class="p-2" src="\LootCommerce\assets\img\pelucias\miku_pelucia.jpg">
                </div>
            </div>
            <div class="col-md-4 p-3">
                <div>
                    <p class="text-muted">Pelúcia</p>
                    <h2 class="title">Hatsune</h2>
                    <p>Descrição</p>
                    <ul class="list-group mt-4">
                        <li class="d-flex  justify-content-between">
                            <h6 class="fw-bolder">Material</h6>

                            <h6 class="text-muted align-middle">material</h6>
                        </li>
                        <li class="d-flex  justify-content-between">
                            <h6 class="fw-bolder">Fabricante</h6>
                            <h6 class="text-muted align-middle">fabricante</h6>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 border p-3">
                <div>
                    <p class="text-muted">10 vendidos</p>
                    <div class="mb-3">
                        <h2>R$ 100,00</h2>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="dropdown mb-3">
                            <a type="button" id="alterarEndereco" class="text-decoration-none" data-bs-toggle="modal" data-bs-target="#alterarEnderecoModal">
                                Envio para casa de Samuel Silva
                                <span class="material-icons inline-icon">keyboard_arrow_down</span>
                            </a>
                            <ul aria-labelledby="navbarDropdown" class="dropdown-menu">
                                <li>
                                    <a href="/LootCommerce/clientes/perfil?operacao=listar" class="dropdown-item">
                                        Envio para casa de Samuel Silva
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="dropdown-item">Adicionar endereço</a>
                                </li>
                            </ul>
                        </div>
                        <p>Frete: R$ 00,00</p>
                        <div class="row g-2 m-2 align-items-center">
                            <div class="col-auto">
                                <label class="col-form-label">Quantidade:</label>
                            </div>
                            <div class="col-4">
                                <input class="form-control" type="number">
                            </div>
                            <div class="col-auto">
                                <span class="form-text">(10 disponíveis)</span>
                            </div>
                        </div>
                    </div>
                    <div class="d-grid gap-1 col-10 mx-auto mt-3">
                        <a type="button" href="/LootCommerce/cliente/confirmarCompra.jsp" class="btn btn-primary rounded-pill">Comprar</a>
                        <button type="button" class="btn  btn-outline-primary rounded-pill">Adicionar ao carrinho</button>
                    </div>
                </div>
            </div>
        </div>

        <!--Modal alterar endereço-->
        <c:import url="/includes/alterarEnderecoModal.jsp" charEncoding="UTF-8"/>

    </main>

</body>

<c:import url="/includes/footer.jsp" charEncoding="UTF-8" />

<script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>

<script>
    $(document).ready(function () {
        $('#cep').mask('00000-000');
    });
</script>

</html>
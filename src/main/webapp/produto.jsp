<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8" />
    <title>Produto</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
    <link rel="stylesheet" type="text/css"
        href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
    <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/main.css' />
</head>

<body class="bg-default">
    <!-- Navigation-->
    <c:import url="/includes/header.jsp" charEncoding="UTF-8" />

    <main class="wrapper container mt-3">
        <div class="row mt-4 bg-white rounded p-4 mb-3">
            <div class="col-md-5">
                <div>
                    <a href="#"><img src="\LootCommerce\assets\img\pelucias\miku_pelucia.jpg" width="70%"></a>

                </div>
            </div>
            <div class="col-md-7 border-left">
                <div>
                    <p class="text-muted">Pelúcia</p>
                    <h2 class="title">Hatsune</h2>
                    <div class="mb-3">
                        <h4>R$ 100,00</h4>
                    </div>10 disponíveis
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
                    <hr>
                    <div class="row">
                        <div class="form-group col-md flex-grow-0">
                            <label>Quantidade</label>
                            <input class="form-control" value="1" type="number">
                        </div>
                    </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <button class="btn btn-primary" type="button">Comprar</button>
                        <button type="button" class="btn  btn-outline-primary">Adicionar ao carrinho</button>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <c:import url="/includes/footer.jsp" charEncoding="UTF-8" />

</body>

<script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>

<script>
    $(document).ready(function () {
        $('#cep').mask('00000-000');
    });
</script>
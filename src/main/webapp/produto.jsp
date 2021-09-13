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
    <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/style.css' />
</head>

<body class="bg-default">
    <!-- Navigation-->
    <c:import url="/includes/header.jsp" charEncoding="UTF-8" />

    <main class="wrapper container mt-3">
        <div class="card">
            <div class="row no-gutters">
                <aside class="col-md-7">
                    <div class="gallery-wrap">
                        <div class="img-big-wrap">
                            <a href="#"><img src="\LootCommerce\assets\img\pelucias\miku_pelucia.jpg"></a>
                        </div>
                        <div class="thumbs-wrap">
                            <a href="#" class="item-thumb"> <img
                                    src="bootstrap-ecommerce-html/images/items/12-1.jpg"></a>
                            <a href="#" class="item-thumb"> <img
                                    src="bootstrap-ecommerce-html/images/items/12-2.jpg"></a>
                            <a href="#" class="item-thumb"> <img src="bootstrap-ecommerce-html/images/items/12.jpg"></a>
                            <a href="#" class="item-thumb"> <img src="bootstrap-ecommerce-html/images/items/4.jpg"></a>
                        </div>
                    </div>
                </aside>
                <main class="col-md-5 border-left">
                    <div class="content-body">
                        <p>Pelúcia</p>
                        <h2 class="title">Hatsune</h2>
                        <div class="mb-3">
                            <var class="price h4">R$ 815,00</var>
                        </div>
                        <p>Descrição</p>
                        <dl class="row">
                            <dt class="col-sm-3">Material</dt>
                            <dd class="col-sm-9">Odsy-1000</dd>
                        </dl>
                        <hr>
                        <div class="row">
                            <div class="form-group col-md flex-grow-0">
                                <label>Quantity</label>
                                <input class="form-control" value="1" type="number">
                            </div>
                        </div>
                        <div class="d-grid gap-2 col-6 mx-auto">
                            <button class="btn btn-primary" type="button">Comprar</button>
                            <button type="button" class="btn  btn-outline-primary">Adicionar ao carrinho</button>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </main>

</body>

<script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>

<script>
    $(document).ready(function () {
        $('#cep').mask('00000-000');
    });
</script>
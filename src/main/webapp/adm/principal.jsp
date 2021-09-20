<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8"/>
    <title>Principal</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>
    <link rel="stylesheet" type="text/css"
        href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>'/>
    <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/main.css'/>
    <link rel="stylesheet" type="text/css" href="/LootCommerce/assets/css/adm.css">
</head>

<body id="body-pd" class="bg-default">

    <header id="header" class="header bg-dark">
        <span id="header-toggle" class="material-icons text-light" type="button">menu</span>
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="/LootCommerce/">
                    <img src="/LootCommerce/assets/img/logo_header.png" alt="" max-height="100" width="130">
                </a>
            </div>
        </div>
    </header>

    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div class="nav_list">
                <div class="col-md-3 col-xl-2">
                    <div class="list-group btn-group-vertical">
                        <a class="nav_link" id="v-pills-principal-tab" type="button">
                            <span class="material-icons inline-icon">home</span>Principal</a>

                            <a class="nav_link" id="v-pills-clientes-tab" type="button" href="/LootCommerce/adm/clientes.jsp">
                                <span class="material-icons inline-icon">people</span>Clientes</a>

                                <a class="nav_link" id="v-pills-vendas-tab" type="button" href="/LootCommerce/adm/vendas.jsp">
                                    <span class="material-icons inline-icon">show_chart</span>Vendas</a>

                            <a class="nav_link" id="v-pills-estoque-tab" type="button" href="/LootCommerce/adm/estoque.jsp">
                                <span class="material-icons inline-icon">all_inbox</span>Estoque</a>
                    </div>
                </div>
            </div>
            <a href="#" class="nav_link"> <span class="material-icons inline-icon">logout</span>Sair
            </a>
        </nav>
    </div>

    <main class="container-fluid">
        <div class="row">
            <div class="bg-white rounded mt-3 p-4">
                <div class="tab-pane fade active show" id="v-pills-principal" role="tabpanel"
                    aria-labelledby="v-pills-principal-tab">
                    <div class="card-body">
                        <div class="col-md-12 h4 fw-bold">Principal</div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>

<script src='<c:url value="/webjars/jquery/3.6.0/jquery.min.js"/>'></script>
<script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
<script src='<c:url value="/assets/js/navbar.js"/>'></script>

</html>
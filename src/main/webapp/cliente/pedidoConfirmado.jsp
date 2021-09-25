<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8">
    <title>Pedido confirmado</title>
    <link rel="stylesheet" type="text/css" href="/LootCommerce/webjars/bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/LootCommerce/webjars/material-design-icons/4.0.0/material-icons.css">
    <link rel="stylesheet" type="text/css" href="/LootCommerce/assets/css/main.css">
</head>

<body class="bg-default">
    <c:import url="/includes/header.jsp" charEncoding="UTF-8"/>

    <main class="wrapper container mt-3 mb-3">
        <div class="row border bg-white rounded p-5 text-center">
            <h4>Agradecemos sua preferência</h4>
            <h2 class="fw-bold mb-5">Pedido realizado com sucesso
                <span class="material-icons text-success">check_circle</span>
            </h2>
            <h6>Apenas após a confirmação do pagamento o pedido será enviado para entrega</h6>
            <h6 class="fw-bold">Número do pedido: 0000</h6>
            <a type="button" href="#" id="visualizarStatus"class="text-decoration-none mt-4">
                Visualizar status da compra
            </a>
        </div>
    </main>
</body>

<script src="/LootCommerce/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>

</html>
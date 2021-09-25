<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
    <meta charset="UTF-8" />
    <title>Gerenciar venda</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
    <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/main.css' />
</head>

<body class="bg-default">

    <header class="header bg-dark shadow">
        <div class="d-flex flex-wrap align-items-center">
            <a type="button" id="voltarGerencia" href="/LootCommerce/adm/vendas.jsp" class="p-4">
                <span class="material-icons">keyboard_backspace</span>
            </a>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 h5">
                    <li class="breadcrumb-item"><a href="/LootCommerce/adm/vendas.jsp">Vendas</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Gerenciar venda</li>
                </ol>
            </nav>
        </div>
    </header>

    <main class="wrapper container mt-3">
        <div class="row mt-3 mb-3 bg-white rounded p-4">
            <div class="col-lg-10">
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <button class="nav-link active" id="nav-dados-pedido-tab" data-bs-toggle="tab"
                            data-bs-target="#nav-dados-pedido" type="button" role="tab" aria-controls="nav-dados-pedido"
                            aria-selected="true">Dados do pedido</button>
                        <button class="nav-link" type="button" data-bs-toggle="modal" id="nav-alterar-status-tab"
                            data-bs-target="#alterarStatusModal">Alterar status</button>
                    </div>
                </nav>
                <div class="tab-content border border-top-0 p-4" id="nav-tabContent">
                    <!--Dados do pedido-->
                    <div class="tab-pane fade active show" id="nav-dados-pedido" role="tabpanel"
                        aria-labelledby="nav-dados-pedido-tab">
                        <div class="row rounded m-2">
                            <div class="col-md-12 h6 fw-bold">Status</div>
                            <div class="col-md-12">
                                <ul class="list-group">
                                    <li class="d-flex">
                                        <strong>ID:</strong><span class="ms-2">0000</span>
                                    </li>
                                    <li class="d-flex">
                                        <strong>Cliente:</strong><span class="ms-2">Nome do cliente</span>
                                    </li>
                                    <li class="d-flex">
                                        <strong>Valor do frete</strong><span class="ms-2">R$ 00,00</span>
                                    </li>
                                    <li class="d-flex">
                                        <strong>Valor total do pedido:</strong><span class="ms-2">R$ 00,00</span>
                                    </li>
                                </ul>
                            </div>
                            <div class="border p-2 m-2 rounded">
                                <strong>Endereço de entrega</strong>
                                <div class="col-md-12 d-flex justify-content-between">
                                    <h6>Nome endereço</h6>
                                    <h6>Logradouro, número</h6><span class="d-block">CEP: 00000-000</span>
                                    <h6>Estado - País</h6>
                                </div>
                                <div class="col-md-12 d-flex justify-content-between">
                                    <h6>Observação</h6>
                                </div>
                            </div>
                            <div class="border p-2 m-2 rounded">
                                <strong>Endereço de cobrança</strong>
                                <div class="col-md-12 d-flex justify-content-between">
                                    <h6>Nome endereço</h6>
                                    <h6>Logradouro, número</h6><span class="d-block">CEP: 00000-000</span>
                                    <h6>Estado - País</h6>
                                </div>
                                <div class="col-md-12 d-flex justify-content-between">
                                    <h6>Observação</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-2">
                <div class="row vstack mt-5 gap-2">
                    <div class="container border rounded p-3">
                        <span class="fw-bold d-block">Data de envio</span><span>00/00/0000</span>
                    </div>
                    <div class="container border rounded p-3">
                        <span class="fw-bold d-block">Data de entrega</span><span>00/00/0000</span>
                    </div>
                    <div class="container border rounded p-3">
                        <span class="fw-bold d-block">Data da compra</span><span>00/00/0000</span>
                    </div>
                </div>
            </div>

            <!--Modal alterar status venda-->
            <div class="modal fade" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                aria-labelledby="alterarStatusLabel" id="alterarStatusModal" aria-hidden="true">
                <div style="max-width:600px" class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="alterarStatusLabel">Alterar status da venda</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="col-md-12 h6 fw-bold">Status</div>
                                <div class="row rounded m-2">
                                    <div class="col-md-12">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" value="option1">
                                            <label class="form-check-label">EM PROCESSAMENTO</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" value="option1">
                                            <label class="form-check-label">PAGAMENTO REALIZADO</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" value="option1">
                                            <label class="form-check-label">EM TRANSPORTE</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" value="option1">
                                            <label class="form-check-label">ENTREGA REALIZADA</label>
                                        </div>
                                        <hr>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" value="option1">
                                            <label class="form-check-label">TROCA AUTORIZADA</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" value="option1">
                                            <label class="form-check-label">TROCA REJEITADA</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" value="option1">
                                            <label class="form-check-label">TROCA ACEITA</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" value="option1">
                                            <label class="form-check-label">TROCA SOLICITADA</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" value="option1">
                                            <label class="form-check-label">TROCA EFETUADA</label>
                                        </div>
                                        <hr>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" value="option1">
                                            <label class="form-check-label">CANCELAMENTO REJEITADO</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" value="option1">
                                            <label class="form-check-label">CANCELAMENTO ACEITO</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" value="option1">
                                            <label class="form-check-label">CANCELAMENTO SOLICITADO</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" value="option1">
                                            <label class="form-check-label">CANCELAMENTO EFETUADO</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Confirmar alteração de status</label>
                                    <input type="password" class="form-control" id="senhaConfirmacao">
                                    <div for="senhaConfirmacao" class="form-text">Insira sua senha de administrador</div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary">Cancelar</button>
                            <button type="submit" class="btn btn-primary">Alterar status</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

</body>

<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
<c:if test="${not empty requestScope.mensagem}">
    <script>
        $(window).on('load', function () {
            $('#erro').modal('show');
        });
    </script>
</c:if>

</html>
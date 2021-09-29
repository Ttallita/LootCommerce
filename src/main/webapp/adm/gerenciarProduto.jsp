<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
    <meta charset="UTF-8" />
    <title>Gerenciar produto</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
    <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/main.css' />
</head>

<body class="bg-default">

    <header class="header bg-dark shadow">
        <div class="d-flex flex-wrap align-items-center">
            <a type="button" id="voltarGerencia" href="/LootCommerce/adm/estoque.jsp" class="p-4">
                <span class="material-icons">keyboard_backspace</span>
            </a>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 h5">
                    <li class="breadcrumb-item"><a href="/LootCommerce/adm/estoque.jsp">Estoque</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Gerenciar produto</li>
                </ol>
            </nav>
        </div>
    </header>

    <main class="wrapper container mt-3">
        <div class="row mt-3 mb-3 bg-white rounded p-4">
            <div class="col-lg-9">
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <button class="nav-link active" id="nav-dados-pedido-tab" type="button" data-bs-toggle="tab"
                            data-bs-target="#nav-dados-pedido" role="tab" aria-controls="nav-dados-pedido" aria-selected="true">
                            Dados do produto</button>
                        <button class="nav-link" id="nav-entrada-estoque-tab" type="button" data-bs-toggle="modal"
                            data-bs-target="#entradaEstoqueModal">
                            Dar entrada em estoque</button>
                        <button class="nav-link" id="nav-alterar-status-tab" type="button" data-bs-toggle="modal" 
                            data-bs-target="#alterarStatusModal">
                            Alterar status</button>
                    </div>
                </nav>
                <div class="tab-content border border-top-0 p-4" id="nav-tabContent">
                    <!--Dados do produto-->
                    <div class="tab-pane fade active show" id="nav-dados-pedido" role="tabpanel"
                        aria-labelledby="nav-dados-pedido-tab">
                        <form class="needs-validation" action="..." method="POST" novalidate="">
                            <input type="hidden" name="operacao" value="atualizar">
                            <div class="row g-2 p-2">
                                <div class="col-md-10">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="nomeProduto" name="nomeProduto" placeholder="" required>
                                        <label class="form-label">Nome do produto</label>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-floating">
                                        <input class="form-control" type="number" name="quantProduto" id="quantProduto" placeholder="" required>
                                        <label class="form-label">Quant.</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" name="vlrCompra" id="vlrCompra" placeholder="" required>
                                        <label class="form-label">Valor de compra</label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-floating">
                                        <select class="form-select" id="fabricante" name="fabricante" placeholder="" required>
                                            <option value="">Selecione</option>
                                            <option>a</option>
                                            <option>b</option>
                                            <option>c</option>
                                        </select>
                                        <label>Grupo de precificação</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <label>Categorias</label>
                                    <div class="form-floating">
                                        <select multiple="" aria-label="multiple select example" id="categoria" class="form-select">
                                            <option selected="">Open this select menu</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <select class="form-select" id="fabricante" name="fabricante" required>
                                            <option value="">Selecione</option>
                                            <option>a</option>
                                            <option>b</option>
                                            <option>c</option>
                                        </select>
                                        <label>Fabricante</label>
                                    </div>
                                </div>

                                <div class="col-md-7">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="descricao" name="descricao" placeholder="" required>
                                        <label class="form-label">Código de barras</label>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="material" name="material" placeholder="" required>
                                        <label class="form-label">Material</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" name="link" id="link" placeholder="" required>
                                        <label class="form-label">Link</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="descricao" name="descricao" placeholder="" required>
                                        <label class="form-label">Descrição</label>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer border-0">
                                <input type="submit" class="btn btn-success" id="cadastrarBtn" value="Atualizar">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="row vstack mt-5 gap-2">
                    <div class="container border rounded p-3">
                        <div class="col-12">
                            <span class="fw-bold d-block">Vendidos</span>
                        </div>
                        <span>000</span>
                    </div>
                    <div class="container border rounded p-3">
                        <div class="col-12">
                            <strong>Quant. estoque</strong>
                        </div>
                        <span>000</span>
                    </div>
                    <div class="container border rounded p-3">
                        <div class="col-12"><strong>Status</strong></div>
                        <span>Inativo/Ativo</span>
                    </div>
                </div>
            </div>

            <!--Modal dar entrada em estoque-->
            <div class="modal fade" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                aria-labelledby="entradaEstoqueLabel" id="entradaEstoqueModal" aria-hidden="true">
                <div style="max-width:600px" class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="entradaEstoqueLabel">Entrada em estoque</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">
                                        Digite a quantidade de itens
                                    </label>
                                    <input class="form-control" id="quantItensEntrada" type="number">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Confirme a entrada em estoque</label>
                                    <input type="password" class="form-control" id="senhaConfirmacao">
                                    <div id="senhaConfirmacao" class="form-text">Insira sua senha de administrador</div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary">Cancelar</button>
                            <button type="submit" class="btn btn-primary">Dar entrada em estoque</button>
                        </div>
                    </div>
                </div>
            </div>

            <!--Modal alterar status-->
            <div class="modal fade" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                aria-labelledby="alterarStatusLabel" id="alterarStatusModal" aria-hidden="true">
                <div style="max-width:600px" class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="alterarStatusLabel">Alterar status do produto</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <h6 class="fw-bold">Status</h6>
                                <div class="mb-3">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">Ativo</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked="">
                                        <label class="form-check-label" for="flexRadioDefault2">Inativo</label>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Confirme a alteração de status</label>
                                    <input type="password" class="form-control" id="senhaConfirmacao">
                                    <div id="senhaConfirmacao" class="form-text">Insira sua senha de administrador</div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" id="cancelarAlterarSttsBtn" class="btn btn-secondary">Cancelar</button>
                            <button type="submit" id="alterarSttsBtn" class="btn btn-primary">Alterar status</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

</body>

<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>

</html>
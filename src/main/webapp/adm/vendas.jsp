<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8" />
    <title>Vendas</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>'/>
    <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/main.css'/>
    <link rel="stylesheet" type="text/css" href="/LootCommerce/assets/css/adm.css">
</head>

<body id="body-pd" class="bg-default">

    <header id="header" class="header bg-dark">
        <span id="header-toggle" class="material-icons text-light" type="button">menu</span>
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="/LootCommerce/">
                    <img src="/LootCommerce/assets/img/logo_header.png" alt="fanLoot" max-height="100" width="130">
                </a>
            </div>
        </div>
    </header>

    <div class="l-navbar" id="nav-bar">
        <nav class="l-nav">
            <div class="nav_list">
                <div class="col-md-3 col-xl-2">
                    <div class="list-group btn-group-vertical">
                        <a class="nav_link" id="paginaPrincipal" type="button" href="/LootCommerce/adm/principal.jsp">
                            <span class="material-icons inline-icon">home</span>
                            Principal
                        </a>
                        <a class="nav_link" id="paginaClientes" type="button" href="/LootCommerce/adm/clientes.jsp">
                            <span class="material-icons inline-icon">people</span>
                            Clientes
                        </a>
                        <a class="nav_link active-navbar" id="paginaVendas" type="button">
                            <span class="material-icons inline-icon">show_chart</span>
                            Vendas
                        </a>
                        <a class="nav_link" id="paginaEstoque" type="button" href="/LootCommerce/adm/estoque.jsp">
                            <span class="material-icons inline-icon">all_inbox</span>
                            Estoque
                        </a>
                    </div>
                </div>
            </div>
            <a href="#" class="nav_link">
                <span class="material-icons inline-icon">logout</span>
                Sair
            </a>
        </nav>
    </div>

    <main class="container-fluid">
        <div class="bg-white rounded mt-3 p-4">
            <div class="card-body row">
                <div class="col-md-12 h4 fw-bold">Vendas</div>
                <div class="input-group mb-3">
                    <input id="pesquisarCliente" type="text" placeholder="Pesquise por palavras-chave..."
                        aria-label="Username" aria-describedby="basic-addon1" class="form-control border-end-0">
                    <span class="btn input-group-text border border-start-0 material-icons">
                        search
                    </span>
                </div>
                <div class="hstack gap-3 border rounded mt-2 mb-2">
                    <div class="p-3">
                        <h6 class="fw-bold">Filtros de pesquisa</h6>
                        <div class="row">
                            <h6 class="col-1">Exibir</h6>
                            <div class="col">
                                <ul class="list-group list-group-horizontal">
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Todas</a></li>
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Cancelamentos</a></li>
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Trocas</a></li>
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Em processamento</a></li>
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Pagamento realizado</a></li>
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Em transporte</a></li>
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Entregue</a></li>
                                </ul>
                                <ul class="list-group list-group-horizontal">
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Todas</a></li>
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Cancelamentos</a></li>
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Trocas</a></li>
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Em processamento</a></li>
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Pagamento realizado</a></li>
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Em transporte</a></li>
                                    <li class="list-group-item border-0 p-0 me-3"><a href="#">Entregue</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 justify-content-between">
                    <div class="btn-group float-end">
                        <button type="button" data-bs-toggle="dropdown" aria-expanded="false"
                            class="btn btn-primary dropdown-toggle" id="filtroSolicitacoes">
                            Ordenar por</button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <li><a class="dropdown-item" href="#">Mais recentes</a></li>
                            <li><a class="dropdown-item" href="#">Mais antigos</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="border row mt-3 p-3 rounded">
                        <div>
                            <h6 class="fw-bold">Troca</h6>
                            <div class="dropdown float-end ">
                                <a href="#" aria-expanded="false" data-bs-toggle="dropdown" class="text-decoration-none">
                                    <span class="material-icons">more_vert</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a type="button" id="gerenciarVendaBtn" class="dropdown-item" href="/LootCommerce/adm/gerenciarVenda.jsp">
                                            Gerenciar
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div>
                                <span class="fw-bold d-block">ID</span>
                                <span>00000</span>
                            </div>
                            <div>
                                <span class="fw-bold d-block">Cliente</span>
                                <span>Nome cliente</span>
                            </div>
                            <div>
                                <span class="fw-bold d-block">Endereço</span>
                                <span>Endereço</span>
                            </div>
                            <div>
                                <span class="fw-bold d-block">Data pedido</span>
                                <span>00/00/0000</span>
                            </div>
                            <div>
                                <span class="d-block fw-bold text-center">Ações</span>
                                <button type="button" id="aceitarTrocaBtn" class="btn btn-outline-success btn-circle m-2"
                                    data-bs-toggle="modal" data-bs-target="#aceitarTrocaModal">
                                    <span class="material-icons">done</span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="border row mt-3 p-3 rounded">
                        <h6 class="col-md-12 fw-bold">Em transporte</h6>
                        <div class="col-md-12 d-flex justify-content-between">
                            <div><span class="fw-bold d-block">ID</span><span>00000</span></div>
                            <div><span class="fw-bold d-block">Cliente</span><span>Nome cliente</span></div>
                            <div><span class="fw-bold d-block">Endereço</span><span>Endereço</span></div>
                            <div><span class="fw-bold d-block">Data pedido</span><span>00/00/0000</span></div>
                            <div><span class="d-block fw-bold text-center">Ações</span>
                                <button type="button" class="btn btn-outline-danger btn-circle m-2">
                                    <span class="material-icons">clear</span>
                                </button>
                                <button type="button" class="btn btn-outline-success btn-circle m-2">
                                    <span class="material-icons">done</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 mt-4">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">«</span></a></li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#" aria-label="Next">
                                        <span aria-hidden="true">»</span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal aceitar troca-->
        <div class="modal fade" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="aceitarTrocaLabel" id="aceitarTrocaModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="aceitarTrocaLabel">Entrada em estoque</h5>
                    </div>
                    <div class="modal-body">Deseja realizar entrada em estoque?</div>
                    <div class="modal-footer">
                        <button type="button" id="recusarEntradaBtn" class="btn btn-danger">Não</button>
                        <button type="button" id="aceitarEntradaBtn" data-bs-dismiss="modal" class="btn btn-success">Sim</button>
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
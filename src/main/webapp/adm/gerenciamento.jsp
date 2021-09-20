<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8" />
    <title>Gerenciamento</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
    <link rel="stylesheet" type="text/css"
        href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
    <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/main.css' />
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
                        <a class="nav_link active active-navbar" id="v-pills-principal-tab" data-bs-toggle="pill"
                            data-bs-target="#v-pills-principal" type="button" aria-controls="v-pills-principal"
                            aria-selected="true">
                            <span class="material-icons inline-icon">home</span>Principal</a>

                        <a class="nav_link" id="v-pills-clientes-tab" data-bs-toggle="pill"
                            data-bs-target="#v-pills-clientes" type="button" aria-controls="v-pills-clientes"
                            aria-selected="false">
                            <span class="material-icons inline-icon">people</span>Clientes</a>

                        <a class="nav_link" id="v-pills-solicitacoes-tab" data-bs-toggle="pill"
                            data-bs-target="#v-pills-solicitacoes" type="button" aria-controls="v-pills-solicitacoes"
                            aria-selected="false">
                            <span class="material-icons inline-icon">announcement</span>Solicitações</a>

                        <a class="nav_link" id="v-pills-vendas-tab" data-bs-toggle="pill"
                            data-bs-target="#v-pills-vendas" type="button" aria-controls="v-pills-vendas"
                            aria-selected="false">
                            <span class="material-icons inline-icon">show_chart</span>Vendas</a>

                        <a class="nav_link" id="v-pills-estoque-tab" data-bs-toggle="pill"
                            data-bs-target="#v-pills-estoque" type="button" aria-controls="v-pills-estoque"
                            aria-selected="false">
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
                <div class="tab-content">
                    <!--principal-->
                    <div class="tab-pane fade active show" id="v-pills-principal" role="tabpanel"
                        aria-labelledby="v-pills-principal-tab">
                        <div class="card-body">
                            <div class="col-md-12 h4 fw-bold">Principal</div>
                        </div>
                    </div>

                    <!--vendas-->
                    <div class="tab-pane fade" id="v-pills-vendas" role="tabpanel" aria-labelledby="v-pills-vendas-tab">
                        <div class="card-body">
                            <div class="col-md-12 h4 fw-bold">Vendas</div>
                            <div class="row">
                                <div class="col-12 justify-content-between">
                                    <div class="col-12 row">
                                        <div class="col-1 p-2">Exibir</div>
                                        <div class="col-10">
                                            <ul class="list-group list-group-horizontal">

                                                <li class="list-group-item border-0"><a href="#">Todas</a></li>
                                                <li class="list-group-item border-0"><a href="#">Pagamento em
                                                        processamento</a></li>
                                                <li class="list-group-item border-0"><a href="#">Pagamento realizado</a>
                                                </li>
                                            </ul>
                                            <ul class="list-group list-group-horizontal">

                                                <li class="list-group-item border-0"><a href="#">Trocas</a></li>
                                                <li class="list-group-item border-0"><a href="#">Cancelamentos</a></li>
                                                <li class="list-group-item border-0"><a href="#">Em transporte</a></li>
                                            </ul>
                                        </div>

                                    </div>
                                    <div class="btn-group float-end">
                                        <button type="button" data-bs-toggle="dropdown" aria-expanded="false"
                                            class="btn btn-primary dropdown-toggle" id="filtroSolicitacoes">
                                            Ordenar por</button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="">
                                            <li><a class="dropdown-item" href="#">Mais recentes</a></li>
                                            <li><a class="dropdown-item" href="#">Mais antigos</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="border row mt-3 p-3 rounded">
                                    <div class="col-md-12 h6 fw-bold">Pagamento realizado
                                        <div class="dropdown float-end ">
                                            <a href="#" aria-expanded="false" data-bs-toggle="dropdown"
                                                class="text-decoration-none">
                                                <span class="material-icons">more_vert</span></a>
                                            <ul class="dropdown-menu">
                                                <li><a type="button" id="visualizarVendaBtn" class="dropdown-item"
                                                        data-bs-toggle="modal" data-bs-target="#visualizarVendaModal">Visualizar</a>
                                                </li>
                                                <li><a type="button" id="vendasAvancadoBtn" class="dropdown-item"
                                                        data-bs-toggle="modal" data-bs-target="#vendasAvancadoModal">Avançado</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-12 d-flex justify-content-between">
                                        <div><span class="fw-bold d-block">ID</span><span>00000</span></div>
                                        <div><span class="fw-bold d-block">Cliente</span><span>Nome cliente</span>
                                        </div>
                                        <div><span class="fw-bold d-block">Endereço</span><span>Endereço</span>
                                        </div>
                                        <div><span class="fw-bold d-block">Data pedido</span><span>00/00/0000</span>
                                        </div>
                                        <div><span class="d-block fw-bold text-center">Ações</span>

                                            <button type="button" class="btn btn-outline-success btn-circle m-2">
                                                <span class="material-icons">done</span>
                                            </button>
                                        </div>
                                    </div>

                                </div>
                                <div class="border row mt-3 p-3 rounded">
                                    <div class="col-md-12 h6 fw-bold">Em transporte</div>
                                    <div class="col-md-12 d-flex justify-content-between">
                                        <div><span class="fw-bold d-block">ID</span><span>00000</span></div>
                                        <div><span class="fw-bold d-block">Cliente</span><span>Nome cliente</span>
                                        </div>
                                        <div><span class="fw-bold d-block">Endereço</span><span>Endereço</span>
                                        </div>
                                        <div><span class="fw-bold d-block">Data pedido</span><span>00/00/0000</span>
                                        </div>
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

                        <!--Modal visualizar pedido-->
                        <div class="modal fade" id="visualizarVendaModal" data-bs-backdrop="static"
                            data-bs-keyboard="false" tabindex="-1" aria-labelledby="visualizarVendaLabel"
                            aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" style="max-width:600px">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="vendasAvancadoLabel">Dados do pedido</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row rounded m-2">
                                            <div class="col-md-12 h6 fw-bold">Status</div>
                                            <div class="col-md-12">
                                                <ul class="list-group">
                                                    <li class="d-flex">
                                                        <strong>ID:</strong><span class="ms-2">0000</span>
                                                    </li>
                                                    <li class="d-flex">
                                                        <strong>Cliente:</strong><span class="ms-2">Nome do
                                                            cliente</span>
                                                    </li>
                                                    <li class="d-flex">
                                                        <strong>Valor do frete</strong><span class="ms-2">R$
                                                            00,00</span>
                                                    </li>
                                                    <li class="d-flex">
                                                        <strong>Valor total do pedido:</strong><span class="ms-2">R$
                                                            00,00</span>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-6 p-3">
                                                <strong>Endereço de entrega</strong>
                                                <h6>Nome endereço</h6>
                                                <h6>Logradouro, número</h6>
                                                <h6>Estado - País</h6>
                                                <h6>CEP</h6>
                                                <h6>Observação</h6>
                                            </div>
                                            <div class="col-6 p-3">
                                                <strong>Endereço de cobrança</strong>
                                                <h6>Nome endereço</h6>
                                                <h6>Logradouro, número</h6>
                                                <h6>Estado - País</h6>
                                                <h6>CEP</h6>
                                                <h6>Observação</h6>
                                            </div>
                                            <div class="col-md-12 d-flex justify-content-between">
                                                <div>
                                                    <span class="fw-bold d-block">Data da compra</span>
                                                    <span>00/00/0000</span>
                                                </div>
                                                <div>
                                                    <span class="fw-bold d-block">Data de envio</span>
                                                    <span>00/00/0000</span>
                                                </div>
                                                <div>
                                                    <span class="fw-bold d-block">Data de entrega</span>
                                                    <span>00/00/0000</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--Modal modo avançado-->
                        <div class="modal fade" id="vendasAvancadoModal" data-bs-backdrop="static"
                            data-bs-keyboard="false" tabindex="-1" aria-labelledby="vendasAvancadoLabel"
                            aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" style="max-width:600px">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="visualizarVendaLabel">Avançado</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="col-md-12 h5 fw-bold">Alterar status</div>
                                        <div class="row rounded m-2">

                                            <div class="col-md-12">

                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        value="option1">
                                                    <label class="form-check-label">EM PROCESSAMENTO</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        value="option1">
                                                    <label class="form-check-label">PAGAMENTO REALIZADO</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        value="option1">
                                                    <label class="form-check-label">EM TRANSPORTE</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        value="option1">
                                                    <label class="form-check-label">ENTREGA REALIZADA</label>
                                                </div>
                                                <hr>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        value="option1">
                                                    <label class="form-check-label">TROCA AUTORIZADA</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        value="option1">
                                                    <label class="form-check-label">TROCA REJEITADA</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        value="option1">
                                                    <label class="form-check-label">TROCA ACEITA</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        value="option1">
                                                    <label class="form-check-label">TROCA SOLICITADA</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        value="option1">
                                                    <label class="form-check-label">TROCA EFETUADA</label>
                                                </div>
                                                <hr>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        value="option1">
                                                    <label class="form-check-label">CANCELAMENTO REJEITADO</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        value="option1">
                                                    <label class="form-check-label">CANCELAMENTO ACEITO</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        value="option1">
                                                    <label class="form-check-label">CANCELAMENTO SOLICITADO</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        value="option1">
                                                    <label class="form-check-label">CANCELAMENTO EFETUADO</label>
                                                </div>
                                            </div>



                                        </div>
                                    </div>
                                    <div class="modal-footer border-0">
                                        <input type="submit" id="btnAlterarEndereco" class="btn btn-success"
                                            value="Atualizar">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--clientes-->
                    <div class="tab-pane fade" id="v-pills-clientes" role="tabpanel"
                        aria-labelledby="v-pills-clientes-tab">
                        <div class="card-body">
                            <div class="col-md-12 h4 fw-bold">Clientes</div>
                            <div class="input-group mb-3">
                                <input id="pesquisarCliente" type="text" placeholder="Pesquise por palavras-chave..."
                                    aria-label="Username" aria-describedby="basic-addon1"
                                    class="form-control border-end-0">
                                <span class="btn input-group-text border border-start-0">
                                    <span class="material-icons">search</span>
                                </span>
                            </div>
                            <div class="hstack gap-3 border rounded mt-2 mb-2">
                                <div class="col-6 p-3">
                                    <ul class="list-group list-group-horizontal">
                                        <div class="col-3">Gênero:</div>
                                        <li class="list-group-item border-0 p-0 me-3"><a href="#">M</a></li>
                                        <li class="list-group-item border-0 p-0 me-3"><a href="#">F</a></li>
                                        <li class="list-group-item border-0 p-0 me-3"><a href="#">Outro</a></li>
                                        <li class="list-group-item border-0 p-0 me-3"><a href="#">N/A</a></li>
                                    </ul>
                                    <ul class="list-group list-group-horizontal">
                                        <div class="col-3">Rank:</div>
                                        <form>
                                            <input id="minRank" class="col-2" placeholder="min">-
                                            <input id="maxRank" class="col-2" placeholder="max">
                                        </form>
                                    </ul>
                                    <ul class="list-group list-group-horizontal">
                                        <div class="col-3">Nascimento:</div>
                                        <form>
                                            <div class="d-flex justify-content-between">
                                                <input id="minRank" type="date" class="col-6">-
                                                <input id="minRank" type="date" class="col-6">
                                            </div>
                                        </form>
                                    </ul>
                                </div>

                                <div class="vr"></div><button type="button" id="novoCliente" data-bs-toggle="modal"
                                    data-bs-target="#cadastrar" class="btn btn-primary">
                                    <span class="material-icons inline-icon">group_add</span>Cadastrar cliente
                                </button><button type="button" data-bs-toggle="modal" data-bs-target="#criarCupom"
                                    class="btn btn-primary">
                                    <span class="material-icons inline-icon">local_play</span>Criar cupom
                                </button>
                                <button type="button" id="darCupom" class="btn btn-primary">
                                    <span class="material-icons inline-icon">local_play</span>Dar cupom
                                </button>
                            </div>

                            <div class="table-responsive border p-3 rounded mb-4">
                                <table class="table table-hover" width="100%">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>ID</th>
                                            <th>Nome</th>
                                            <th>CPF</th>
                                            <th>Gênero</th>
                                            <th>Rank</th>
                                            <th>Nascimento</th>
                                            <th>Telefone</th>
                                            <th>Opções</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="cliente" items="${clientes}">
                                            <tr>
                                                <td>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" value=""
                                                            id="flexCheckDefault">
                                                    </div>
                                                </td>
                                                <td>${cliente.id}</td>
                                                <td>${cliente.nome} ${cliente.sobrenome}</td>
                                                <td>${cliente.cpf}</td>
                                                <td>${cliente.genero}</td>
                                                <td>${cliente.ranking}</td>
                                                <td>${cliente.dataNascimento}</td>
                                                <td>${cliente.telefone.numero}</td>
                                                <td>
                                                    <div>
                                                        <button class="btn btn-dark" type="button"
                                                            id="dropdownMenuButton1" data-bs-toggle="dropdown"
                                                            aria-expanded="false">
                                                            <span class="material-icons"> list</span>
                                                        </button>
                                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                            <li>
                                                                <a class="dropdown-item" id="gerenciarLink"
                                                                    href="/LootCommerce/admin/cliente?operacao=listarAdm&id=${cliente.id}">Gerenciar</a>
                                                            </li>
                                                            <li>
                                                                <hr class="dropdown-divider link-light">
                                                            </li>
                                                            <li>
                                                                <a class="dropdown-item" href="#" data-bs-toggle="modal"
                                                                    id="inativarLink" data-bs-target="#inativar">
                                                                    Inativar</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                            <!-- Modal cadastrar cliente-->
                            <div class="modal fade" id="cadastrar" data-bs-backdrop="static" data-bs-keyboard="false"
                                tabindex="-1" aria-labelledby="cadastrarLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-scrollable modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="cadastrarLabel">Cadastro</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="needs-validation w-75" id="form-cadastro"
                                                action="/LootCommerce/admin/controle" method="POST" novalidate>
                                                <input type="hidden" name="operacao" value="salvar">
                                                <h1 class="h3 mb-3 fw-normal text-center">Novo Cliente</h1>
                                                <div class="row g-3 mb-3">
                                                    <div class="col-12">
                                                        <div class="form-floating">
                                                            <input type="email" class="form-control" id="email"
                                                                name="email" required>
                                                            <label for="email" class="form-label">Email</label>
                                                            <div class="invalid-feedback">Insira um email válido.</div>
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div class="form-floating">
                                                            <input type="password" class="form-control" id="senha"
                                                                name="senha" required>
                                                            <label for="senha" class="form-label">Senha</label>
                                                            <div class="invalid-feedback">
                                                                A senha deve possuir pelo menos 8 caracteres,
                                                                ter letras
                                                                maiúsculas e minúsculas e conter caracteais.
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-6">
                                                        <div class="form-floating">
                                                            <input type="password" class="form-control"
                                                                id="senhaConfirmacao" name="senhaConfirmacao" required>
                                                            <label for="senha-confirmacao" class="form-label">Insira
                                                                novamente</label>
                                                            <div class="invalid-feedback">As senhas não são as
                                                                mesmas.</div>
                                                        </div>
                                                    </div>

                                                    <!-- Dados pessoais -->
                                                    <div class="col-sm-5 form-outline">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="nome"
                                                                name="nome" required>
                                                            <label for="floatingPassword"
                                                                class="form-label">Nome</label>
                                                            <div class="invalid-feedback">Insira seu primeiro
                                                                nome.</div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-7">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="sobrenome"
                                                                name="sobrenome" required>
                                                            <label for="sobrenome" class="form-label">Sobrenome</label>
                                                            <div class="invalid-feedback">Insira seu sobrenome.
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-floating">
                                                            <select class="form-select" id="genero" name="genero"
                                                                required>
                                                                <option value="">Selecione</option>
                                                                <option>Masculino</option>
                                                                <option>Feminimo</option>
                                                                <option>Outro</option>
                                                                <option>Prefiro não informar</option>
                                                            </select>
                                                            <label>Gênero</label>
                                                            <div class="invalid-feedback">Selecione um gênero.
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-floating">
                                                            <input type="date" class="form-control" id="date"
                                                                name="date" required>
                                                            <label for="pais" class="form-label">Data de
                                                                nascimento</label>
                                                            <div class="invalid-feedback">Selecione sua data de
                                                                nascimento.</div>
                                                        </div>
                                                    </div>

                                                    <div class="col-4">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="cpf" name="cpf"
                                                                required>
                                                            <label for="cpf" class="form-label">CPF</label>
                                                            <div class="invalid-feedback">Insira seu número de
                                                                CPF.</div>
                                                        </div>
                                                    </div>

                                                    <!-- Telefone -->
                                                    <div class="col-3 form-outline">
                                                        <div class="form-floating">
                                                            <select class="form-select" id="tipoTelefone"
                                                                name="tipoTelefone" required>
                                                                <option value="">Selecione</option>
                                                                <option>Residêncial</option>
                                                                <option>Celular</option>>
                                                            </select>
                                                            <label for="phone" class="form-label">Tipo de
                                                                Telefone</label>
                                                            <div class="invalid-feedback">Insira um tipo de
                                                                telefone.</div>
                                                        </div>
                                                    </div>

                                                    <div class="col-5">
                                                        <div class="form-floating">
                                                            <input type="phone" class="form-control" id="phone"
                                                                name="phone" required>
                                                            <label for="phone" class="form-label">Telefone</label>
                                                            <div class="invalid-feedback">Insira um Telefone
                                                                válido.</div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <hr>
                                                <h5 class="mb-3 fw-normal text-center">Endereço Residêncial
                                                </h5>
                                                <!--Endereço-->
                                                <div class="row g-3 mb-3">
                                                    <div class="col-md-6">
                                                        <div class="form-floating">
                                                            <select class="form-select" id="tpResidencia"
                                                                name="tpResidencia" required>
                                                                <option value="">Selecione</option>
                                                                <option>Casa</option>
                                                                <option>Apartamento</option>
                                                                <option>Outro</option>
                                                            </select>
                                                            <label>Tipo de residência</label>
                                                            <div class="invalid-feedback">Selecione um tipo de
                                                                residência válido.</div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="tpLogradouro"
                                                                name="tpLogradouro" required>
                                                            <label for="tpLogradouro" class="form-label">Tipo de
                                                                logradouro</label>
                                                            <div class="invalid-feedback">Insira um tipo de
                                                                logradouro.</div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="logradouro"
                                                                name="logradouro" required>
                                                            <label for="logradouro"
                                                                class="form-label">Logradouro</label>
                                                            <div class="invalid-feedback">Insira o logradouro.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="numero"
                                                                name="numero" required>
                                                            <label for="numero" class="form-label">Número</label>
                                                            <div class="invalid-feedback">Insira o número.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="bairro"
                                                                name="bairro" required>
                                                            <label for="bairro" class="form-label">Bairro</label>
                                                            <div class="invalid-feedback">Insira um bairro.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="cep" name="cep"
                                                                required>
                                                            <label for="cep" class="form-label">CEP</label>
                                                            <div class="invalid-feedback">Insira um cep
                                                                válido.</div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-floating">
                                                            <select class="form-select" id="cidade" name="cidade"
                                                                required>
                                                                <option value="">Selecione</option>
                                                                <option>São Paulo</option>
                                                            </select>
                                                            <label>Cidade</label>
                                                            <div class="invalid-feedback">Selecione uma cidade.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-floating">
                                                            <select class="form-select" id="estado" name="estado"
                                                                required>
                                                                <option value="">Selecione</option>
                                                                <option>São Paulo</option>
                                                            </select>
                                                            <label>Estado</label>
                                                            <div class="invalid-feedback">Selecione um estado.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-floating">
                                                            <label for="pais" class="form-label"></label>
                                                            <select class="form-select" id="pais" name="pais" required>
                                                                <option value="">Selecione</option>
                                                                <option>Brasil</option>
                                                            </select>
                                                            <label>País</label>
                                                            <div class="invalid-feedback">Selecione um país.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="apelido"
                                                                name="apelido" required>
                                                            <label for="apelido" class="form-label">Nome do
                                                                endereço</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="observacao"
                                                                name="observacao" placeholder="">
                                                            <label for="observacao" class="form-label">
                                                                Observação <span class="text-muted">(Opcional)</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">
                                                        Cancelar
                                                    </button>
                                                    <button type="submit" id="btnCadastrar"
                                                        class="btn btn-primary">Cadastrar</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Modal inativar cliente-->
                            <div class="modal fade" id="inativar" data-bs-backdrop="static" data-bs-keyboard="false"
                                tabindex="-1" aria-labelledby="inativarLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-sm">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="cadastrarLabel">Inativar</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Tem certeza que deseja inativar esse cliente?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary">Cancelar</button>
                                            <button type="button" id="btnInativar" data-bs-dismiss="modal"
                                                class="btn btn-danger">Inativar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Modal criar cupom promocional-->
                            <div class="modal fade" id="criarCupom" data-bs-backdrop="static" data-bs-keyboard="false"
                                tabindex="-1" aria-labelledby="criarCupomLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header border-0">
                                            <h5 class="modal-title" id="criarCupomLabel">Criar cupom</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <form class="needs-validation" action="..." method="POST" novalidate="">
                                            <input type="hidden" name="operacao" value="salvar">
                                            <div class="modal-body">
                                                <div class="row g-2">
                                                    <div class="col-md-12 h6 fw-bold">Novo cupom</div>
                                                    <div class="col-md-9">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="nomeCartao"
                                                                name="nomeCartao" required="">
                                                            <label for="nomeCartao" required="">Descrição</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-floating">
                                                            <input class="form-control" id="dtValidade"
                                                                name="dtValidade" required="">
                                                            <label for="nomeCartao" class="form-label">Valor</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer border-0">
                                                <input type="submit" class="btn btn-success" id="btnCriarCupom"
                                                    value="Criar cupom">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <!--solicitacoes-->
                    <div class="tab-pane fade" id="v-pills-solicitacoes" role="tabpanel"
                        aria-labelledby="v-pills-solicitacoes-tab">
                        <div class="card-body">
                            <div class="col-md-12 h4 fw-bold">Solitações </div>
                            <div class="row">
                                <div class="col-12 justify-content-between">
                                    <ul class="list-group list-group-horizontal">
                                        <div style="padding: .5rem 1rem" class="col-1">Exibir</div>
                                        <li class="list-group-item border-0"><a href="#">Todos</a></li>
                                        <li class="list-group-item border-0"><a href="#">Trocas</a></li>
                                        <li class="list-group-item border-0"><a href="#">Cancelamentos</a></li>
                                    </ul>
                                    <div class="btn-group float-end">
                                        <button type="button" data-bs-toggle="dropdown" aria-expanded="false"
                                            class="btn btn-primary dropdown-toggle" id="filtroSolicitacoes">Ordenar
                                            por</button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="">
                                            <li><a class="dropdown-item" href="#">Mais recentes</a></li>
                                            <li><a class="dropdown-item" href="#">Mais antigos</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="">
                                    <div class="border row mt-3 p-3 rounded">
                                        <div class="col-md-12 h6 fw-bold">Troca</div>
                                        <div class="col-md-12 d-flex justify-content-between">
                                            <div><span class="fw-bold d-block">ID</span><span>00000</span></div>
                                            <div><span class="fw-bold d-block">Cliente</span><span>Nome cliente</span>
                                            </div>
                                            <div><span class="fw-bold d-block">Data pedido</span><span>00/00/0000</span>
                                            </div>
                                            <div><span class="fw-bold d-block">Data
                                                    entrega</span><span>00/00/0000</span></div>
                                            <div><span class="d-block fw-bold text-center">Autorizar</span>
                                                <button type="button" class="btn btn-outline-danger btn-circle m-2">
                                                    <span class="material-icons">clear</span>
                                                </button>
                                                <button type="button" class="btn btn-outline-success btn-circle m-2">
                                                    <span class="material-icons">done</span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="border row mt-3 p-3 rounded">
                                        <div class="col-md-12 h6 fw-bold">Troca</div>
                                        <div class="col-md-12 d-flex justify-content-between">
                                            <div><span class="fw-bold d-block">ID</span><span>00000</span></div>
                                            <div><span class="fw-bold d-block">Cliente</span><span>Nome cliente</span>
                                            </div>
                                            <div><span class="fw-bold d-block">Data pedido</span><span>00/00/0000</span>
                                            </div>
                                            <div><span class="fw-bold d-block">Data
                                                    entrega</span><span>00/00/0000</span></div>
                                            <div><span class="d-block fw-bold text-center">Autorizar</span>
                                                <button type="button" class="btn btn-outline-danger btn-circle m-2">
                                                    <span class="material-icons">clear</span>
                                                </button>
                                                <button type="button" class="btn btn-outline-success btn-circle m-2">
                                                    <span class="material-icons">done</span>
                                                </button>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="border row mt-3 p-3 rounded">
                                        <div class="col-md-12 h6 fw-bold">Cancelamento</div>
                                        <div class="col-md-12 d-flex justify-content-between">
                                            <div><span class="fw-bold d-block">ID</span><span>00000</span></div>
                                            <div><span class="fw-bold d-block">Cliente</span><span>Nome cliente</span>
                                            </div>
                                            <div><span class="fw-bold d-block">Data pedido</span><span>00/00/0000</span>
                                            </div>
                                            <div><span class="fw-bold d-block">Data
                                                    entrega</span><span>00/00/0000</span></div>
                                            <div><span class="d-block fw-bold text-center">Autorizar</span>
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
                            </div>
                            <div class="row">
                                <div class="col-12 mt-4">
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

                    <!--estoque-->
                    <div class="tab-pane fade" id="v-pills-estoque" role="tabpanel"
                        aria-labelledby="v-pills-estoque-tab">
                        <div class="card-body">
                            <div class="col-md-12 h4 fw-bold">Estoque</div>
                        </div>
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

<script>
    $(document).ready(function () {
        $('#cpf').mask('000.000.000-00', { reverse: true });
        $('#cep').mask('00000-000');
        $('#phone').mask('00 00000-0000');
    });
</script>

</html>
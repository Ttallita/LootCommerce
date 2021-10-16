<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8" />
    <title>Estoque</title>
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

                        <a class="nav_link" id="paginaVendas" type="button" href="/LootCommerce/adm/vendas.jsp">
                            <span class="material-icons inline-icon">show_chart</span>
                            Vendas
                        </a>

                        <a class="nav_link active-navbar" id="paginaEstoque" type="button">
                            <span class="material-icons inline-icon">all_inbox</span>
                            Estoque
                        </a>
                    </div>
                </div>
            </div>
            <a href="#" class="nav_link"> <span class="material-icons inline-icon">logout</span>Sair
            </a>
        </nav>
    </div>

    <main class="container-fluid">
        <div class="bg-white rounded mt-3 p-4">
            <div class="card-body">
                <h4 class=" fw-bold">Estoque</h4>
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
                        <ul class="list-group list-group-horizontal">
                            <div class="col-3">Fabricante:</div>
                            <li class="list-group-item border-0 p-0 me-3"><a href="#">a</a></li>
                            <li class="list-group-item border-0 p-0 me-3"><a href="#">b</a></li>
                        </ul>
                        <ul class="list-group list-group-horizontal">
                            <div class="col-3">Categoria:</div>
                            <li class="list-group-item border-0 p-0 me-3"><a href="#">a</a></li>
                            <li class="list-group-item border-0 p-0 me-3"><a href="#">b</a></li>
                        </ul>
                        <ul class="list-group list-group-horizontal">
                            <div class="col-3">Valor de compra:</div>
                            <form>
                                <input id="minRank" class="col-2" placeholder="min">-
                                <input id="maxRank" class="col-2" placeholder="max">
                            </form>
                        </ul>
                        <ul class="list-group list-group-horizontal">
                            <div class="col-3">Entrada:</div>
                            <form>
                                <div class="d-flex justify-content-between">
                                    <input id="minRank" type="date" class="col-6">-
                                    <input id="minRank" type="date" class="col-6">
                                </div>
                            </form>
                        </ul>
                    </div>
                </div>
    
                <ul class="nav nav-tabs">
                    <li class="nav-item ">
                        <a type="button" id="novoCliente" data-bs-toggle="modal" data-bs-target="#cadastrarModal"
                            class="nav-link">
                            <span class="material-icons inline-icon">add_box</span>
                            Cadastrar produto</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
                            aria-expanded="false">
                            Status
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a id="inativarBtn" class="dropdown-item" type="button" data-bs-toggle="modal"
                                    data-bs-target="#inativarModal">
                                    Inativar
                                </a>
                            </li>
                            <li><a id="ativarBtn" class="dropdown-item" type="button">Ativar</a></li>
                        </ul>
                    </li>
                </ul>
    
                <div class="table-responsive border p-3 rounded mb-4">
                    <table class="table table-hover" width="100%">
                        <thead>
                            <tr>
                                <th></th>
                                <th>ID</th>
                                <th>Nome</th>
                                <th>Fabricante</th>
                                <th>Categoria</th>
                                <th>Val. compra</th>
                                <th>Material</th>
                                <th>Quantidade</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="flexCheckDefault">
                                    </div>
                                </td>
                                <td>ID</td>
                                <td>Nome</td>
                                <td>Fabricante</td>
                                <td>Categoria</td>
                                <td>Val. compra</td>
                                <td>Material</td>
                                <td>Quantidade</td>
                                <td>
                                    <div class="dropdown float-end ">
                                        <a href="#" aria-expanded="false" data-bs-toggle="dropdown"
                                            class="text-decoration-none">
                                            <span class="material-icons">more_vert</span></a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a type="button" id="gerenciarVendaBtn" class="dropdown-item"
                                                    href="/LootCommerce/adm/gerenciarProduto.jsp">
                                                    Gerenciar
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
    
                <!-- Modal cadastrar produto-->
                <div class="modal fade" id="cadastrarModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                    aria-labelledby="cadastrarLabel" style="display: none;" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" style="max-width:600px">
                        <div class="modal-content">
                            <div class="modal-header border-0">
                                <h5 class="modal-title" id="cadastrarLabel">Cadastrar produto</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <form class="needs-validation" action="..." method="POST" novalidate="">
                                <input type="hidden" name="operacao" value="salvar">
                                <div class="modal-body">
                                    <div class="row g-2">
                                        <h6 class="col-md-12 fw-bold">Dados do produto</h6>
                                        <div class="col-md-10">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="nomeProduto" name="nomeProduto"
                                                    required>
                                                <label class="form-label">Nome do produto</label>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-floating">
                                                <input class="form-control" type="number" name="quantProduto"
                                                    id="quantProduto" required>
                                                <label class="form-label">Quant.</label>
                                            </div>
                                        </div>
    
                                        <div class="col-md-4">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" name="vlrCompra" id="vlrCompra"
                                                    required>
                                                <label class="form-label">Valor de compra</label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-floating">
                                                <select class="form-select" id="fabricante" name="fabricante" required>
                                                    <option value="">Selecione</option>
                                                    <option>a</option>
                                                    <option>b</option>
                                                    <option>c</option>
                                                </select>
                                                <label>Grupo de precificação</label>
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
                                        <div class="col-md-6">
                                            <label>Categorias</label>
                                            <div class="form-floating">
                                                <select multiple="" aria-label="multiple select example" id="categoria"
                                                    class="form-select">
                                                    <option selected="">Open this select menu</option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                        </div>
    
                                        <div class="col-md-7">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="descricao" name="descricao"
                                                    required>
                                                <label class="form-label">Código de barras</label>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="material" name="material"
                                                    required>
                                                <label class="form-label">Material</label>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" name="link" id="link" required>
                                                <label class="form-label">Link</label>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="descricao" name="descricao"
                                                    required>
                                                <label class="form-label">Descrição</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer border-0">
                                    <input type="submit" class="btn btn-success" value="Cadastrar" id="cadastrarBtn">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
    
                <!-- Modal inativar produto-->
                <div class="modal fade" id="inativarModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                    aria-labelledby="inativarLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="inativarLabel">Inativar</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Tem certeza que deseja inativar esse(s) produto(s)?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary">Cancelar</button>
                                <button type="button" id="inativarBtn" data-bs-dismiss="modal" class="btn btn-danger">
                                    Inativar
                                </button>
                            </div>
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
        $('#vlrCompra').mask("#.##0,00", {reverse: true});
    });
</script>

</html>
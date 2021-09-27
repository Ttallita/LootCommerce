<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8" />
    <title>Clientes</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
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
                        <a class="nav_link" id="v-pills-principal-tab" type="button"
                            href="/LootCommerce/adm/principal.jsp">
                            <span class="material-icons inline-icon">home</span>
                            Principal
                        </a>

                        <a class="nav_link active-navbar" id="v-pills-clientes-tab" type="button">
                            <span class="material-icons inline-icon">people</span>
                            Clientes
                        </a>

                        <a class="nav_link" id="v-pills-vendas-tab" type="button" href="/LootCommerce/adm/vendas.jsp">
                            <span class="material-icons inline-icon">show_chart</span>
                            Vendas
                        </a>

                        <a class="nav_link" id="v-pills-estoque-tab" type="button" href="/LootCommerce/adm/estoque.jsp">
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
        <div class="row">
            <div class="bg-white rounded mt-3 p-4">
                <div class="card-body">
                    <div class="col-md-12 h4 fw-bold">Clientes</div>
                    <div class="input-group mb-3">
                        <input id="pesquisarCliente" type="text" placeholder="Pesquise por palavras-chave..."
                            aria-label="Username" aria-describedby="basic-addon1" class="form-control border-end-0">
                        <span class="btn input-group-text border border-start-0">
                            <span class="material-icons">search</span>
                        </span>
                    </div>

                    <div class="hstack gap-3 border rounded mt-2 mb-2">
                        <div class="p-3">
                            <h6 class="fw-bold">Filtros de pesquisa</h6>
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
                    </div>
                    <ul class="nav nav-tabs">
                        <li class="nav-item ">
                            <a type="button" id="novoCliente" data-bs-toggle="modal" data-bs-target="#cadastrarModal" class="nav-link">
                                <span class="material-icons inline-icon">group_add </span>
                                Cadastrar cliente
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">
                                <span class="material-icons inline-icon">local_play</span>
                                Cupons
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a class="dropdown-item" type="button" data-bs-toggle="modal" data-bs-target="#criarCupomModal">
                                        Gerar cupom
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" type="button">Dar cupom</a>
                                </li>
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
                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
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
                                                <button class="btn btn-dark" type="button" id="dropdownMenuButton1"
                                                    data-bs-toggle="dropdown" aria-expanded="false">
                                                    <span class="material-icons"> list</span>
                                                </button>
                                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                    <li>
                                                        <a class="dropdown-item" id="gerenciarLink" href="/LootCommerce/admin/cliente?operacao=listarAdm&id=${cliente.id}">
                                                            Gerenciar
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <hr class="dropdown-divider link-light">
                                                    </li>
                                                    <li>
                                                        <a class="dropdown-item" href="#" data-bs-toggle="modal" id="inativarLink" data-bs-target="#inativarModal">
                                                            Inativar
                                                        </a>
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
                    <div class="modal fade" id="cadastrarModal" data-bs-backdrop="static" data-bs-keyboard="false"
                        tabindex="-1" aria-labelledby="cadastrarLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-scrollable modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="cadastrarLabel">Cadastro</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form class="needs-validation w-75" id="form-cadastro" action="/LootCommerce/admin/controle" method="POST" novalidate>
                                        <input type="hidden" name="operacao" value="salvar">
                                        <h3 class="mb-3 fw-normal text-center">Novo Cliente</h3>
                                        <div class="row g-3 mb-3">
                                            <div class="col-12">
                                                <div class="form-floating">
                                                    <input type="email" class="form-control" id="email" name="email" required>
                                                    <label for="email" class="form-label">Email</label>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="form-floating">
                                                    <input type="password" class="form-control" id="senha" name="senha" required>
                                                    <label for="senha" class="form-label">Senha</label>
                                                </div>
                                            </div>

                                            <div class="col-6">
                                                <div class="form-floating">
                                                    <input type="password" class="form-control" id="senhaConfirmacao" name="senhaConfirmacao" required>
                                                    <label for="senha-confirmacao" class="form-label">Insira novamente</label>
                                                </div>
                                            </div>

                                            <!-- Dados pessoais -->
                                            <div class="col-sm-5 form-outline">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="nome" name="nome" required>
                                                    <label for="floatingPassword" class="form-label">Nome</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-7">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="sobrenome" name="sobrenome" required>
                                                    <label for="sobrenome" class="form-label">Sobrenome</label>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-floating">
                                                    <select class="form-select" id="genero" name="genero" required>
                                                        <option value="">Selecione</option>
                                                        <option>Masculino</option>
                                                        <option>Feminimo</option>
                                                        <option>Outro</option>
                                                        <option>Prefiro não informar</option>
                                                    </select>
                                                    <label>Gênero</label>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-floating">
                                                    <input type="date" class="form-control" id="date" name="date" required>
                                                    <label for="pais" class="form-label">Data de nascimento</label>
                                                </div>
                                            </div>

                                            <div class="col-4">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="cpf" name="cpf" required>
                                                    <label for="cpf" class="form-label">CPF</label>
                                                </div>
                                            </div>

                                            <!-- Telefone -->
                                            <div class="col-3 form-outline">
                                                <div class="form-floating">
                                                    <select class="form-select" id="tipoTelefone" name="tipoTelefone" required>
                                                        <option value="">Selecione</option>
                                                        <option>Residêncial</option>
                                                        <option>Celular</option>>
                                                    </select>
                                                    <label for="phone" class="form-label">Tipo de Telefone</label>
                                                </div>
                                            </div>

                                            <div class="col-5">
                                                <div class="form-floating">
                                                    <input type="phone" class="form-control" id="phone" name="phone" required>
                                                    <label for="phone" class="form-label">Telefone</label>
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
                                                    <select class="form-select" id="tpResidencia" name="tpResidencia" required>
                                                        <option value="">Selecione</option>
                                                        <option>Casa</option>
                                                        <option>Apartamento</option>
                                                        <option>Outro</option>
                                                    </select>
                                                    <label>Tipo de residência</label>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="tpLogradouro" name="tpLogradouro" required>
                                                    <label for="tpLogradouro" class="form-label">Tipo de logradouro</label>
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="logradouro"  name="logradouro" required>
                                                    <label for="logradouro" class="form-label">Logradouro</label>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="numero" name="numero" required>
                                                    <label for="numero" class="form-label">Número</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="bairro" name="bairro" required>
                                                    <label for="bairro" class="form-label">Bairro</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="cep" name="cep" required>
                                                    <label for="cep" class="form-label">CEP</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-floating">
                                                    <select class="form-select" id="cidade" name="cidade" required>
                                                        <option value="">Selecione</option>
                                                        <option>São Paulo</option>
                                                    </select>
                                                    <label>Cidade</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-floating">
                                                    <select class="form-select" id="estado" name="estado" required>
                                                        <option value="">Selecione</option>
                                                        <option>São Paulo</option>
                                                    </select>
                                                    <label>Estado</label>
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
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="apelido" name="apelido"
                                                        required>
                                                    <label for="apelido" class="form-label">Nome do endereço</label>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="observacao" name="observacao">
                                                    <label for="observacao" class="form-label">
                                                        Observação <span class="text-muted">(Opcional)</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                                Cancelar
                                            </button>
                                            <button type="submit" id="cadastrarBtn" class="btn btn-primary">
                                                Cadastrar
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal inativar cliente-->
                    <div class="modal fade" id="inativarModal" data-bs-backdrop="static" data-bs-keyboard="false"
                        tabindex="-1" aria-labelledby="inativarLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-sm">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="inativarLabel">Inativar</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Tem certeza que deseja inativar esse cliente?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary">Cancelar</button>
                                    <button type="button" id="inativarBtn" data-bs-dismiss="modal"
                                        class="btn btn-danger">Inativar</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal criar cupom promocional-->
                    <div class="modal fade" id="criarCupomModal" data-bs-backdrop="static" data-bs-keyboard="false"
                        tabindex="-1" aria-labelledby="criarCupomLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header border-0">
                                    <h5 class="modal-title" id="criarCupomLabel">Criar cupom</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <form class="needs-validation" action="..." method="POST" novalidate="">
                                    <input type="hidden" name="operacao" value="salvar">
                                    <div class="modal-body">
                                        <div class="row g-2">
                                            <div class="col-md-12 h6 fw-bold">Novo cupom</div>
                                            <div class="col-md-9">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="descricaoCupom" name="descricaoCupom" required>
                                                    <label for="descricaoCupom" required>Descrição</label>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-floating">
                                                    <input class="form-control" id="vlrCupom" name="vlrCupom" required>
                                                    <label for="vlrCupom" class="form-label">Valor</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer border-0">
                                        <input type="submit" class="btn btn-success" id="criarCupomBtn" value="Criar cupom">
                                    </div>
                                </form>
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
        $('#cpf').mask('000.000.000-00', { reverse: true });
        $('#cep').mask('00000-000');
        $('#phone').mask('00 00000-0000');
        $('#vlrCupom').mask("#.##0,00", {reverse: true});
        });
</script>

</html>
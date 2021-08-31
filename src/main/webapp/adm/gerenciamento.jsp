<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8" />
    <title>Gerenciamento</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
    <link rel="stylesheet" type="text/css" href='/Ecommerce/assets/css/style.css' />
</head>

<body class="bg-default">
    <!-- Navigation-->
    <c:import url="/includes/header-Administrador.jsp" charEncoding="UTF-8" />

    <div class="wrapper container mt-3">
        <main class="content">
            <div class="container-fluid p-0">
                <h1 class="h3 mb-3">Administrador ${nome}</h1>
                <div class="row">
                    <div class="col-md-3 col-xl-2">
                        <div class="list-group btn-group-vertical">
                            <button class="active btn btn-primary" id="v-pills-principal-tab" data-bs-toggle="pill"
                                data-bs-target="#v-pills-principal" type="button" aria-controls="v-pills-principal"
                                aria-selected="true">
                                <span class="material-icons inline-icon">home</span>Principal</button>

                            <button class="btn btn-primary" id="v-pills-clientes-tab" data-bs-toggle="pill"
                                data-bs-target="#v-pills-clientes" type="button" aria-controls="v-pills-clientes"
                                aria-selected="false">
                                <span class="material-icons inline-icon">people</span>Clientes</button>

                            <button class="btn btn-primary" id="v-pills-trocas-tab" data-bs-toggle="pill"
                                data-bs-target="#v-pills-trocas" type="button" aria-controls="v-pills-trocas"
                                aria-selected="false">
                                <span class="material-icons inline-icon">compare_arrows</span>Trocas</button>

                            <button class="btn btn-primary" id="v-pills-vendas-tab" data-bs-toggle="pill"
                                data-bs-target="#v-pills-vendas" type="button" aria-controls="v-pills-vendas"
                                aria-selected="false">
                                <span class="material-icons inline-icon">show_chart</span>Vendas</button>

                            <button class="btn btn-primary" id="v-pills-estoque-tab" data-bs-toggle="pill"
                                data-bs-target="#v-pills-estoque" type="button" aria-controls="v-pills-estoque"
                                aria-selected="false">
                                <span class="material-icons inline-icon">all_inbox</span>Estoque</button>
                        </div>
                    </div>

                    <div class="col-md-9 col-xl-10">
                        <div class="tab-content">
                            <!--principal-->
                            <div class="tab-pane fade active show" id="v-pills-principal" role="tabpanel"
                                aria-labelledby="v-pills-principal-tab">
                                <div class="shadow">
                                    <div class="card-body">
                                        <h5 class="card-title">Principal</h5>
                                    </div>
                                </div>
                            </div>

                            <!--vendas-->
                            <div class="tab-pane fade" id="v-pills-vendas" role="tabpanel"
                                aria-labelledby="v-pills-vendas-tab">
                                <div class="shadow">
                                    <div class="card-body">
                                        <h5 class="card-title">Vendas</h5>
                                    </div>
                                </div>
                                <div class="shadow">
                                    <div class="card-body">
                                    </div>
                                </div>
                            </div>

                            <!--clientes-->
                            <div class="tab-pane fade" id="v-pills-clientes" role="tabpanel"
                                aria-labelledby="v-pills-clientes-tab">
                                <div class="shadow">
                                    <div class="card-body">
                                        <div>
                                            <h3 class="card-title fw-bold">Clientes</h3>
                                            <!-- Button trigger modal -->
                                            <button type="button" id="novoCliente" class="btn btn-primary mb-3 float-end"
                                                data-bs-toggle="modal" data-bs-target="#cadastrar">
                                                <span class="material-icons inline-icon">group_add</span>
                                                Cadastrar cliente
                                            </button>
                                        </div>
                                        <div class="input-group mb-3">
                                            <input id="pesquisarCliente"type="text" placeholder="Pesquise por palavras-chave..." aria-label="Username" aria-describedby="basic-addon1" class="form-control border-end-0">
                                            <span class="btn input-group-text border border-start-0">
                                                <span class="material-icons">search</span>
                                            </span>
                                        </div>

                                        <div class="card">
                                            <h2>
                                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">Filtros</button>
                                            </h2>
                                            <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample" style="">
                                                <ul class="list-group list-group-horizontal">
                                                    <div class="col-2" style="padding: .5rem 1rem">Gênero:</div>
                                                    <li class="list-group-item border-0"><a href="#">M</a></li>
                                                    <li class="list-group-item border-0"><a href="#">F</a></li>
                                                    <li class="list-group-item border-0"><a href="#">Outro</a></li>
                                                    <li class="list-group-item border-0"><a href="#">N/A</a></li>
                                                </ul>
                                                <ul class="list-group list-group-horizontal">
                                                    <div class="col-2" style="padding: .5rem 1rem">Rank:</div>
                                                    <li class="list-group-item border-0">
                                                        <form>
                                                            <input id="minRank" class="col-2" placeholder="min">-
                                                            <input id="maxRank" class="col-2" placeholder="max">
                                                        </form>
                                                    </li>
                                                </ul>
                                                <ul class="list-group list-group-horizontal">
                                                    <div class="col-2" style="padding: .5rem 1rem">Nascimento:</div>
                                                    <li class="list-group-item border-0">
                                                        <form>
                                                            <input id="minNasc" class="col-2" placeholder="min">-
                                                            <input id="maxNasc" class="col-2" placeholder="max">
                                                        </form>
                                                    </li>
                                                </ul>

                                            </div>
                                        </div>

                                        <div class="table-responsive">
                                            <table class="table table-hover table-sm" cellspacing="0"
                                                width="100%">
                                                <thead>
                                                    <tr>
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
                                                            <td>${cliente.id}</td>
                                                            <td>${cliente.nome} ${cliente.sobrenome}</td>
                                                            <td>${cliente.cpf}</td>
                                                            <td>${cliente.genero}</td>
                                                            <td>${cliente.ranking}</td>
                                                            <td>${cliente.dataNascimento}</td>
                                                            <td>${cliente.telefone.numero}</td>
                                                            <td>
                                                                <div>
                                                                    <button class="btn btn-outline-dark" type="button"
                                                                        id="dropdownMenuButton1" data-bs-toggle="dropdown"
                                                                        aria-expanded="false">
                                                                        <span class="material-icons"> list</span>
                                                                    </button>
                                                                    <ul class="dropdown-menu"
                                                                        aria-labelledby="dropdownMenuButton1">
                                                                        <li><a class="dropdown-item" id="gerenciarLink"
                                                                                href="/Ecommerce/admin/cliente?operacao=listar">Gerenciar</a>
                                                                        </li>
                                                                        <li>
                                                                            <hr class="dropdown-divider link-light">
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item" href="#" data-bs-toggle="modal" id="inativarLink" data-bs-target="#inativar">
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

                                        <!-- Modal -->
                                        <div class="modal fade" id="cadastrar" data-bs-backdrop="static"
                                            data-bs-keyboard="false" tabindex="-1" aria-labelledby="cadastrarLabel"
                                            aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-scrollable modal-xl">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="cadastrarLabel">Cadastro</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form class="needs-validation w-75" id="form-cadastro" action="/Ecommerce/admin/clientes" method="POST" novalidate>
                                                            <input type="hidden" name="operacao" value="salvar">
                                                            <h1 class="h3 mb-3 fw-normal text-center">Novo Cliente</h1>
                                                            <div class="row g-3 mb-3">
                                                                <div class="col-12">
                                                                    <div class="form-floating">
                                                                        <input type="email" class="form-control" id="email" name="email" required>
                                                                        <label for="email" class="form-label">Email</label>
                                                                        <div class="invalid-feedback">Insira um email válido.</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-6">
                                                                    <div class="form-floating">
                                                                        <input type="password" class="form-control" id="senha" name="senha" required>
                                                                        <label for="senha" class="form-label">Senha</label>
                                                                        <div class="invalid-feedback">
                                                                            A senha deve possuir pelo menos 8 caracteres, ter letras
                                                                            maiúsculas e minúsculas e conter caracteres especiais.
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-6">
                                                                    <div class="form-floating">
                                                                        <input type="password" class="form-control" id="senhaConfirmacao" name="senhaConfirmacao" required>
                                                                        <label for="senha-confirmacao" class="form-label">Insira novamente</label>
                                                                        <div class="invalid-feedback">As senhas não são as mesmas.</div>
                                                                    </div>
                                                                </div>

                                                                <!-- Dados pessoais -->
                                                                <div class="col-sm-5 form-outline">
                                                                    <div class="form-floating">
                                                                        <input type="text" class="form-control" id="nome" name="nome" required>
                                                                        <label for="floatingPassword" class="form-label">Nome</label>
                                                                        <div class="invalid-feedback">Insira seu primeiro nome.</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-7">
                                                                    <div class="form-floating">
                                                                        <input type="text" class="form-control" id="sobrenome" name="sobrenome" required>
                                                                        <label for="sobrenome" class="form-label">Sobrenome</label>
                                                                        <div class="invalid-feedback">Insira seu sobrenome.</div>
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
                                                                        <div class="invalid-feedback">Selecione um gênero.</div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6">
                                                                    <div class="form-floating">
                                                                        <input type="date" class="form-control" id="date" name="date" required>
                                                                        <label for="pais" class="form-label">Data de nascimento</label>
                                                                        <div class="invalid-feedback">Selecione sua data de nascimento.</div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-4">
                                                                    <div class="form-floating">
                                                                        <input type="text" class="form-control" id="cpf" name="cpf" required>
                                                                        <label for="cpf" class="form-label">CPF</label>
                                                                        <div class="invalid-feedback">Insira seu número de CPF.</div>
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
                                                                        <div class="invalid-feedback">Insira um tipo de telefone.</div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-5">
                                                                    <div class="form-floating">
                                                                        <input type="phone" class="form-control" id="phone" name="phone" required>
                                                                        <label for="phone" class="form-label">Telefone</label>
                                                                        <div class="invalid-feedback">Insira um Telefone válido.</div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <hr>
                                                            <h5 class="mb-3 fw-normal text-center">Endereço de Residêncial</h5>
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
                                                                        <div class="invalid-feedback">Selecione um tipo de residência válido.</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-floating">
                                                                        <input type="text" class="form-control" id="tpLogradouro" name="tpLogradouro" required>
                                                                        <label for="tpLogradouro" class="form-label">Tipo de logradouro</label>
                                                                        <div class="invalid-feedback">Insira um tipo de logradouro.</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-5">
                                                                    <div class="form-floating">
                                                                        <input type="text" class="form-control" id="logradouro" name="logradouro" required>
                                                                        <label for="logradouro" class="form-label">Logradouro</label>
                                                                        <div class="invalid-feedback">Insira o logradouro.</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-floating">
                                                                        <input type="text" class="form-control" id="numero" name="numero" required>
                                                                        <label for="numero"
                                                                            class="form-label">Número</label>
                                                                        <div class="invalid-feedback">Insira o número.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-floating">
                                                                        <input type="text" class="form-control" id="bairro" name="bairro" required>
                                                                        <label for="bairro"
                                                                            class="form-label">Bairro</label>
                                                                        <div class="invalid-feedback">Insira um bairro.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-floating">
                                                                        <input type="text" class="form-control" id="cep" name="cep" required>
                                                                        <label for="cep" class="form-label">CEP</label>
                                                                        <div class="invalid-feedback">Insira um cep
                                                                            válido.</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-floating">
                                                                        <select class="form-select" id="cidade" name="cidade" required>
                                                                            <option value="">Selecione</option>
                                                                            <option>São Paulo</option>
                                                                        </select>
                                                                        <label>Cidade</label>
                                                                        <div class="invalid-feedback">Selecione uma cidade.</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-floating">
                                                                        <select class="form-select" id="estado" name="estado" required>
                                                                            <option value="">Selecione</option>
                                                                            <option>São Paulo</option>
                                                                        </select>
                                                                        <label>Estado</label>
                                                                        <div class="invalid-feedback">Selecione um estado.</div>
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
                                                                        <div class="invalid-feedback">Selecione um país. </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-8">
                                                                    <div class="form-floating">
                                                                        <input type="text" class="form-control" id="observacao" name="observacao" placeholder="">
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
                                                                <button type="submit" id="btnCadastrar" class="btn btn-primary">Cadastrar</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Modal -->
                                        <div class="modal fade" id="inativar" data-bs-backdrop="static"
                                            data-bs-keyboard="false" tabindex="-1" aria-labelledby="inativarLabel"
                                            aria-hidden="true">
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
                                                        <button type="button"
                                                            class="btn btn-secondary">Cancelar</button>
                                                        <button type="button" id="btnInativar" data-bs-dismiss="modal"
                                                            class="btn btn-danger">Inativar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <!--trocas-->
                            <div class="tab-pane fade" id="v-pills-trocas" role="tabpanel"
                                aria-labelledby="v-pills-trocas-tab">
                                <div class="shadow">
                                    <div class="card-body">
                                        <h5 class="card-title">Trocas</h5>
                                    </div>
                                </div>
                            </div>

                            <!--estoque-->
                            <div class="tab-pane fade" id="v-pills-estoque" role="tabpanel"
                                aria-labelledby="v-pills-estoque-tab">
                                <div class="shadow">
                                    <div class="card-body">
                                        <h5 class="card-title">Estoque</h5>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>

<script src='<c:url value="/webjars/jquery/3.6.0/jquery.min.js"/>'></script>
<script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
<script src='<c:url value="/assets/js/form-validation.js"/>'></script>
<script src='<c:url value="/assets/js/disable-enable-form.js"/>'></script>

<script>
    $(document).ready(function () {
        $('#cpf').mask('000.000.000-00', { reverse: true });
        $('#cep').mask('00000-000');
        $('#phone').mask('00 00000-0000');
    });
</script>

</html>
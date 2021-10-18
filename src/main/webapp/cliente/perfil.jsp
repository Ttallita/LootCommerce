<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Perfil</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
    <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/main.css' />
</head>

<body class="bg-default">

    <c:import url="/includes/header.jsp" charEncoding="UTF-8" />

    <c:if test="${not empty requestScope.mensagem}">

        <div class="modal fade" id="erro" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header bg-danger text-white">
                        <h5 class="modal-title">Erro ao cadastrar</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <ul>
                            <c:forEach var="mensagem" items="${mensagem}">
                                <li>${mensagem}</li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Continuar</button>
                    </div>
                </div>
            </div>
        </div>
    </c:if>

    <main class="wrapper container mt-3">
        <div class="row bg-white rounded">
            <aside class="col-lg-2 border p-0">
                <div class="h4 p-3 text-center">${clienteLogado.nome} ${clienteLogado.sobrenome}</div>
                <div class="list-group">
                    <button class="${empty aba ? 'active' : ''} btn btn-outline-primary text-start border-0"
                        id="v-pills-conta-tab" data-bs-toggle="pill" data-bs-target="#v-pills-conta" type="button"
                        aria-controls="v-pills-conta" aria-selected="true">
                        <span class="material-icons inline-icon">home</span>
                        Conta
                    </button>

                    <button
                        class="${not empty aba && aba == 'senha' ? 'active' : ''} btn btn-outline-primary text-start border-0"
                        id="v-pills-dados-pessoais-tab" data-bs-toggle="pill" data-bs-target="#v-pills-dados-pessoais"
                        type="button" aria-controls="v-pills-dados-pessoais" aria-selected="false">
                        <span class="material-icons inline-icon">lock</span>
                        Dados Pessoais
                    </button>

                    <button
                        class="${not empty aba && aba == 'endereco' ? 'active' : ''} btn btn-outline-primary text-start border-0"
                        id="v-pills-enderecos-tab" data-bs-toggle="pill" data-bs-target="#v-pills-enderecos"
                        type="button" aria-controls="v-pills-enderecos" aria-selected="false">
                        <span class="material-icons inline-icon">local_shipping</span>
                        Endereços
                    </button>

                    <button
                        class="${not empty aba && aba == 'cartoes' ? 'active' : ''} btn btn-outline-primary text-start border-0"
                        id="v-pills-cartoes-tab" data-bs-toggle="pill" data-bs-target="#v-pills-cartoes" type="button"
                        aria-controls="v-pills-cartoes" aria-selected="false">
                        <span class="material-icons inline-icon">credit_card</span>
                        Cartões
                    </button>

                    <button class="btn btn-outline-primary text-start border-0" id="v-pills-compras-tab"
                        data-bs-toggle="pill" data-bs-target="#v-pills-compras" type="button"
                        aria-controls="v-pills-compras" aria-selected="false">
                        <span class="material-icons inline-icon">shopping_bag</span>
                        Compras
                    </button>

                    <button class="btn btn-outline-primary text-start border-0" id="v-pills-cupons-tab"
                        data-bs-toggle="pill" data-bs-target="#v-pills-cupons" type="button"
                        aria-controls="v-pills-cupons" aria-selected="false">
                        <span class="material-icons inline-icon">local_play</span>
                        Cupons
                    </button>
                </div>
            </aside>

            <div class="col-lg-10 p-0 border">
                <div class="tab-content">
                    <!--conta-->
                    <section class="tab-pane fade ${empty aba ? 'active show' : ''}" id="v-pills-conta" role="tabpanel"
                        aria-labelledby="v-pills-conta-tab">
                        <h4 class="fw-bold p-3 m-0 border text-center">Conta</h4>
                        <form class="text-center p-4" action="/LootCommerce/clientes/perfil/editarSenha" method="POST">
                            <input type="hidden" name="operacao" value="atualizar">
                            <div class="vstack gap-3 text-center">
                                <div class="col-6 mx-auto">
                                    <div class="form-floating input-group">
                                        <input type="email" class="form-control" name="email" id="emailAtual" value="${clienteLogado.usuario.email}">
                                        <label for="email" class="form-label">Email</label>
                                        <input type="hidden" name="tipo" value="email">
                                        <input id="atualizarEmailBtn" type="submit" value="Atualizar email" class="btn btn-primary">
                                    </div>
                                </div>
                            </div>
                        </form>
                        <hr class="my-4">
                        <form class="text-center p-4" action="/LootCommerce/clientes/perfil/editarSenha" method="POST">
                            <input type="hidden" name="operacao" value="atualizar">
                            <div class="vstack gap-3 text-center">
                                <div class="col-6 mx-auto form-floating">
                                    <input type="password" class="form-control" id="senhaAtual" name="senhaAtual" placeholder="">
                                    <label for="senhaAtual" class="form-label">Senha atual</label>
                                </div>
                                <div class="col-6 mx-auto form-floating">
                                    <input type="password" class="form-control" id="senhaNova" name="senhaNova" placeholder="">
                                    <label for="senhaNova" class="form-label">Senha nova</label>
                                </div>
                                <div class="col-6 mx-auto form-floating">
                                    <input type="password" class="form-control" id="senhaConfirmacao" name="senhaConfirmacao" placeholder="">
                                    <label for="senhaConfirmacao" class="form-label">Confirme a nova senha</label>
                                </div>
                                <input type="hidden" name="tipo" value="senha">
                                <input id="alterarDadosConta" type="submit" value="Alterar dados" class="btn btn-primary mx-auto btn-lg">
                            </div>
                        </form>

                    </section>

                    <!--dados pessoais-->
                    <section class="tab-pane fade ${not empty aba && aba == 'senha' ? 'active show' : ''}"
                        id="v-pills-dados-pessoais" role="tabpanel" aria-labelledby="v-pills-dados-pessoais-tab">
                        <h4 class="fw-bold p-3 m-0 border ter">Alterar dados pessoais</h4>
                        <form class="needs-validation text-center p-4" action="/LootCommerce/clientes/perfil" method="POST" novalidate="">
                            <input type="hidden" name="operacao" value="atualizar">
                            <div class="row g-3">

                                <div class="col-sm-6">
                                    <div class="input-group form-floating">
                                        <input type="text" class="form-control" id="nome" name="nome" value="${clienteLogado.nome}" required>
                                        <label class="form-label">Nome</label>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="input-group form-floating">
                                        <input type="text" class="form-control" id="sobrenome" name="sobrenome"
                                            value="${clienteLogado.sobrenome}" required>
                                        <label class="form-label">Sobrenome</label>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="input-group form-floating">
                                        <select class="form-select" id="genero" name="genero" required>
                                            <option name="genero" value="${clienteLogado.genero}">
                                                Selecione
                                            </option>
                                            <option>Masculino</option>
                                            <option>Feminino</option>
                                            <option>Outro</option>
                                            <option>Prefiro não informar</option>
                                        </select>
                                        <label class="form-label">Gênero</label>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="input-group form-floating">
                                        <input type="date" class="form-control" id="dataNasc" name="date"
                                            value="${clienteLogado.dataNascimento}" required>
                                        <label class="form-label">Data de nascimento</label>
                                    </div>
                                </div>

                                <div class="col-4">
                                    <div class="input-group form-floating">
                                        <input type="text" class="form-control" id="cpf" name="cpf"
                                            value="${clienteLogado.cpf}" required>
                                        <label class="form-label">CPF</label>
                                    </div>
                                </div>

                                <div class="col-3">
                                    <div class="input-group form-floating">
                                        <select class="form-select" id="tipoTelefone" name="tipoTelefone" required>
                                            <option name="tipoTelefone" value="${clienteLogado.telefone.tipo}">
                                                ${clienteLogado.telefone.tipo}
                                            </option>
                                            <option value="">Selecione</option>
                                            <option>Celular</option>
                                            <option>Residêncial</option>
                                        </select>
                                        <label class="form-label">Tipo de Telefone</label>
                                    </div>
                                </div>

                                <div class="col-3">
                                    <div class="input-group form-floating">
                                        <input type="phone" class="form-control" id="phone" name="phone"
                                            value="${clienteLogado.telefone.ddd},${clienteLogado.telefone.numero}"
                                            required>
                                        <label class="form-label">Telefone</label>
                                    </div>
                                </div>

                            </div>
                            <hr class="my-4">
                            <button class="btn btn-primary mt-auto btn-lg" id="atualizarDadosPessoaisBtn" type="submit">
                                Atualizar
                            </button>
                        </form>
                    </section>

                    <!--endereços-->
                    <section class="tab-pane fade ${not empty aba && aba == 'enderecos' ? 'active show' : ''}"
                        id="v-pills-enderecos" role="tabpanel" aria-labelledby="v-pills-enderecos-tab">
                        <h4 class="fw-bold p-3 m-0 border text-center">Endereços cadastrados</h4>
                        <div class="border p-4">
                            <button type="button" id="novoEndereco" class="btn btn-primary mb-3 float-end"
                                data-bs-toggle="modal" data-bs-target="#cadastrarEnderecoModal">
                                <span class="material-icons inline-icon">add_circle_outline</span>
                                Novo endereço
                            </button>
                            <table id="table-enderecos" class="table table-hover table-sm table-responsive">
                                <thead>
                                    <tr>
                                        <th scope="col">Logradouro</th>
                                        <th scope="col">Número</th>
                                        <th scope="col">Bairro</th>
                                        <th scope="col">CEP</th>
                                        <th scope="col">Cidade</th>
                                        <th scope="col">Estado</th>
                                        <th scope="col">Pais</th>
                                        <th scope="col">Tipo</th>
                                        <th scope="col">Alterar</th>
                                        <th scope="col">Excluir</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="endereco" items="${clienteLogado.enderecos}">
                                        <tr>
                                            <td>${endereco.logradouro}</td>
                                            <td>${endereco.numero}</td>
                                            <td>${endereco.bairro}</td>
                                            <td>${endereco.cep}</td>
                                            <td>${endereco.cidade}</td>
                                            <td>${endereco.estado}</td>
                                            <td>${endereco.pais}</td>
                                            <td>${endereco.tipoEndereco}</td>
                                            <td>
                                                <span class="material-icons" data-bs-toggle="modal" data-bs-target="#editarEnderecoModal${endereco.id}">
                                                    mode_edit
                                                </span>
                                            </td>
                                            <td>
                                                <span class="material-icons text-danger" data-bs-toggle="modal" data-bs-target="#excluirEnderecoModal${endereco.id}">
                                                    delete
                                                </span>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

                            <!-- Modal Cadastro endereço -->
                            <div class="modal fade" id="cadastrarEnderecoModal" data-bs-backdrop="static"
                                data-bs-keyboard="false" tabindex="-1" aria-labelledby="cadastrarEnderecoLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="cadastrarEnderecoLabel">
                                                Cadastrar
                                            </h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="needs-validation" action="../clientes/enderecos" method="POST" novalidate>
                                                <input type="hidden" name="operacao" value="salvar">
                                                <div class="row g-3 mb-3">
                                                    <div class="col-md-6">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="tpResidencia" name="tpResidencia" placeholder="" required>
                                                            <label for="tpResidencia" class="form-label">
                                                                Tipo de residência
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="tpLogradouro" name="tpLogradouro" placeholder="" required>
                                                            <label for="tpLogradouro" class="form-label">
                                                                Tipo de logradouro
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="logradouro" name="logradouro" placeholder="" required>
                                                            <label for="logradouro" class="form-label">Logradouro</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="numero" name="numero" placeholder="" required>
                                                            <label for="numero" class="form-label">Número</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="bairro" name="bairro" placeholder="" required>
                                                            <label for="bairro" class="form-label">Bairro</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="cep" name="cep" placeholder="" required>
                                                            <label for="cep" class="form-label">CEP</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-floating">
                                                            <select class="form-select" id="cidade" name="cidade" placeholder="" required>
                                                                <option value="">Selecione</option>
                                                                <option>São Paulo</option>
                                                            </select>
                                                            <label>Cidade</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-floating">
                                                            <select class="form-select" id="estado" name="estado" placeholder="" required>
                                                                <option value="">Selecione</option>
                                                                <option>São Paulo</option>
                                                            </select>
                                                            <label>Estado</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-floating">
                                                            <label for="pais" class="form-label"></label>
                                                            <select class="form-select" id="pais" name="pais" placeholder="" required>
                                                                <option value="">Selecione</option>
                                                                <option>Brasil</option>
                                                            </select>
                                                            <label>País</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="apelido" name="apelido" placeholder="" required>
                                                            <label for="apelido" class="form-label">
                                                                Apelido do endereço
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="observacao" name="observacao" placeholder="">
                                                            <label for="observacao" class="form-label">Observação
                                                                <span class="text-muted">(Opcional)</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-floating">
                                                            <select class="form-select" id="tpEndereco"
                                                                name="tpEndereco" required>
                                                                <option value="">Selecione</option>
                                                                <option>Cobrança</option>
                                                                <option>Entrega</option>
                                                                <option>Cobrança/Entrega</option>
                                                            </select>
                                                            <label>Tipo de Endereço</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" id="btnCancelarEnderecoNovo" class="btn btn-secondary" data-bs-dismiss="modal">
                                                        Cancelar
                                                    </button>
                                                    <button type="submit" id="btnCadastrar" class="btn btn-success">
                                                        Cadastrar
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Modal Editar Endereço-->
                            <c:forEach var="endereco" items="${clienteLogado.enderecos}">
                                <div class="modal fade" id="editarEnderecoModal${endereco.id}" data-bs-backdrop="static"
                                    data-bs-keyboard="false" tabindex="-1" aria-labelledby="editarEnderecoLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered modal-xl">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="cadastrarEnderecoLabel">Editar</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form class="needs-validation" action="../clientes/enderecos" method="POST" novalidate>
                                                    <input type="hidden" name="operacao" value="atualizar">
                                                    <div class="row g-3 mb-3">
                                                        <div class="col-md-6">
                                                            <div class="form-floating">
                                                                <input type="text" class="form-control" id="tpResidencia" name="tpResidencia" placeholder="" required>
                                                                <label for="tpResidencia" class="form-label">
                                                                    Tipo de residência
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-floating">
                                                                <input type="text" class="form-control"  id="tpLogradouro" value="${endereco.tipoLogradouro}"
                                                                    name="tpLogradouro" placeholder="" required>
                                                                <label for="tpLogradouro" class="form-label">
                                                                    Tipo de logradouro
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-5">
                                                            <div class="form-floating">
                                                                <input type="text" class="form-control" id="logradouro" name="logradouro" value="${endereco.logradouro}">
                                                                <label for="logradouro" class="form-label">Logradouro</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-floating">
                                                                <input type="text" class="form-control" id="numero" name="numero" value="${endereco.numero}">
                                                                <label for="numero" class="form-label">Número</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="form-floating">
                                                                <input type="text" class="form-control" id="bairro" name="bairro" value="${endereco.bairro}">
                                                                <label for="bairro" class="form-label">Bairro</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="form-floating">
                                                                <input type="text" class="form-control" id="cep" name="cep" value="${endereco.cep}">
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
                                                                <select class="form-select" id="pais" name="pais" required>
                                                                    <option value="">Selecione</option>
                                                                    <option>Brasil</option>
                                                                </select>
                                                                <label>País</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <div class="form-floating">
                                                                <input type="text" class="form-control" id="apelido"
                                                                    name="apelido" value="${endereco.apelido}"
                                                                    placeholder="" required>
                                                                <label for="apelido" class="form-label">
                                                                    Apelido do endereço
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <div class="form-floating">
                                                                <input type="text" class="form-control" id="observacao" name="observacao" value="${endereco.observacoes}">
                                                                <label for="observacao" class="form-label">
                                                                    Observação
                                                                    <span class="text-muted">(Opcional)</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="form-floating">
                                                                <select class="form-select" id="tpEndereco" name="tpEndereco" required>
                                                                    <option value="">Selecione</option>
                                                                    <option>Cobrança</option>
                                                                    <option>Entrega</option>
                                                                    <option>Cobrança/Entrega</option>
                                                                </select>
                                                                <label>Tipo de Endereço</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" id="btnCancelarEnderecoNovo" class="btn btn-secondary" data-bs-dismiss="modal">
                                                            Cancelar
                                                        </button>
                                                        <input type="hidden" value="${endereco.id}" name="idEndereco" />
                                                        <input type="submit" class="btn btn-primary" value="Editar" name="atualizar" />
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                            <!-- Modal Exclusão Endereço -->
                            <c:forEach var="endereco" items="${clienteLogado.enderecos}">
                                <div class="modal fade" id="excluirEnderecoModal${endereco.id}" data-bs-backdrop="static"
                                    data-bs-keyboard="false" tabindex="-1" aria-labelledby="excluirEnderecoLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered modal-sm">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="excluirEnderecoLabel">Excluir</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                Tem certeza que deseja excluir esse endereço?
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                                    Cancelar
                                                </button>
                                                <form action="../clientes/enderecos" method="POST">
                                                    <input type="hidden" value="remover" name="operacao"/>
                                                    <input type="hidden" value="${endereco.id}" name="idEndereco"/>
                                                    <input type="submit" class="btn btn-danger" value="Excluir" name="excluir"/>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </section>

                    <!--cartões-->
                    <section class="tab-pane fade  ${not empty aba && aba == 'cartoes' ? 'active show' : ''}"
                        id="v-pills-cartoes" role="tabpanel" aria-labelledby="v-pills-cartoes-tab">
                        <h4 class="fw-bold p-3 m-0 border text-center">Meus cartões</h4>
                        <div class="border p-4">
                            <button type="button" id="novoCartao" class="btn btn-primary mb-3 float-end"
                                data-bs-toggle="modal" data-bs-target="#cadastrarCartaoModal">
                                <span class="material-icons inline-icon">add_circle_outline</span>Novo Cartão
                            </button>

                            <table id="table-cartoes" class="table table-hover table-sm table-responsive">
                                <thead>
                                    <tr>
                                        <th scope="col">Nome Impresso</th>
                                        <th scope="col">Número</th>
                                        <th scope="col">Bandeira</th>
                                        <th scope="col">Código</th>
                                        <th scope="col">Data validade</th>
                                        <th scope="col">Alterar</th>
                                        <th scope="col">Excluir</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cartao" items="${clienteLogado.cartoesDeCredito}">
                                        <tr>
                                            <td>${cartao.nomeImpressoCartao}</td>
                                            <td>${cartao.numCartao}</td>
                                            <td>${cartao.bandeira}</td>
                                            <td>${cartao.codigo}</td>
                                            <td>${cartao.dataValidade}</td>
                                            <td>
                                                <span class="material-icons" data-bs-toggle="modal" data-bs-target="#editarCartaoModal${cartao.id}">
                                                    mode_edit
                                                </span>
                                            </td>
                                            <td>
                                                <span class="material-icons text-danger" data-bs-toggle="modal" data-bs-target="#excluirCartao${cartao.id}">
                                                    delete
                                                </span>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

                            <!-- Modal Cadastro/Edição Cartão -->
                            <div class="modal fade" id="cadastrarCartaoModal" data-bs-backdrop="static"
                                data-bs-keyboard="false" tabindex="-1" aria-labelledby="cadastrarCartaoLabel"
                                aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-xl" style="max-width:600px">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="cadastrarCartaoLabel">Cadastrar cartão</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="needs-validation" action="/LootCommerce/clientes/cartoes"
                                                method="POST" novalidate>
                                                <input type="hidden" name="operacao" value="salvar">
                                                <div class="row g-2">
                                                    <div class="col-md-8">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="nomeCartao" name="nomeCartao" placeholder="" required="">
                                                            <label for="nomeCartao">Nome impresso</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-floating">
                                                            <select class="form-select" id="bandeira" name="bandeira"
                                                                required>
                                                                <option value="">Selecione</option>
                                                                <option>Visa</option>
                                                                <option>Mastercard</option>
                                                            </select>
                                                            <label>Bandeira</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="numCartao" name="numCartao" placeholder="" required="">
                                                            <label for="numCartao" class="form-label">Número do cartão</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="dtValidade" name="dtValidade" placeholder="" required>
                                                            <label for="dtValidade" class="form-label">Validade</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="codigoCartao" name="codigoCartao" placeholder="" required>
                                                            <label for="codigoCartao" class="form-label">CVV</label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" id="btnCancelarCartaoNovo" class="btn btn-secondary" data-bs-dismiss="modal">
                                                        Cancelar
                                                    </button>
                                                    <input type="submit" id="btnCadastrarCartao" value="Cadastrar" class="btn btn-success">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <c:forEach var="cartao" items="${clienteLogado.cartoesDeCredito}">
                                <!-- Modal Cadastro/Edição Cartão -->
                                <div class="modal fade" id="editarCartaoModal${cartao.id}" data-bs-backdrop="static"
                                    data-bs-keyboard="false" tabindex="-1" aria-labelledby="editarCartaoLabel"
                                    aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered modal-xl">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="editarCartaoLabel">Editar</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form class="needs-validation" action="/LootCommerce/clientes/cartoes" method="POST" novalidate>
                                                    <input type="hidden" name="operacao" value="atualizar">
                                                    <div class="row g-3 mb-3">
                                                        <div class="col-md-6">
                                                            <div class="form-floating">
                                                                <input type="text" class="form-control" id="numCartao"
                                                                    name="numCartao" value="${cartao.numCartao}"
                                                                    placeholder="" required>
                                                                <label for="numCartao" class="form-label">Número do cartão</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-floating">
                                                                <input type="text" class="form-control" id="nomeCartao"
                                                                    name="nomeCartao" value="${cartao.nomeImpressoCartao}" placeholder=""
                                                                    required>
                                                                <label for="nomeCartao" required>Nome impresso no cartão</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-floating">
                                                                <select class="form-select" id="bandeira"
                                                                    name="bandeira" required>
                                                                    <option value="">Selecione</option>
                                                                    <option>Visa</option>
                                                                    <option>Mastercard</option>
                                                                </select>
                                                                <label>Bandeira</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-floating">
                                                                <input type="text" class="form-control" id="codigoCartao" name="codigoCartao" value="${cartao.codigo}">
                                                                <label for="nomeCartao" class="form-label">Código</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-floating">
                                                                <input type="text" class="form-control" id="dtValidade" name="dtValidade" value="${cartao.dataValidade}">
                                                                <label for="nomeCartao" class="form-label">Data de Validade</label>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="modal-footer">
                                                        <button type="button" id="btnCancelarCartaoNovo"
                                                            class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                        <input type="hidden" value="${cartao.id}" name="idCartao" />
                                                        <input type="submit" class="btn btn-primary" value="Editar"
                                                            name="atualizar"/>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                            <!-- Modal Excluir Cartão -->
                            <c:forEach var="cartao" items="${clienteLogado.cartoesDeCredito}">
                                <div class="modal fade" id="excluirCartao${cartao.id}" data-bs-backdrop="static"
                                    data-bs-keyboard="false" tabindex="-1" aria-labelledby="excluirCartaoLabel"
                                    aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered modal-sm">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="excluirCartaoLabel">Excluir</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">Tem certeza que deseja excluir esse cartão?</div>
                                            <div class="modal-footer">
                                                <button type="button" data-bs-dismiss="modal"
                                                    class="btn btn-secondary">Cancelar</button>
                                                <form action="../clientes/cartoes" method="POST">
                                                    <input type="hidden" value="remover" name="operacao" />
                                                    <input type="hidden" value="${cartao.id}" name="idCartao" />
                                                    <input type="submit" class="btn btn-danger" value="Excluir" name="excluir" />
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </section>

                    <!--compras-->
                    <section class="tab-pane fade" id="v-pills-compras" role="tabpanel" aria-labelledby="v-pills-compras-tab">
                        <h4 class="fw-bold p-3 m-0 border text-center">Compras</h4>
                        <div class="border rounded m-4 p-3">
                            <div class="dropdown float-end ">
                                <a aria-expanded="false" data-bs-toggle="dropdown" class="text-decoration-none">
                                    <span class="material-icons">more_vert</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Solicitar cancelamento</a></li>
                                    <li><a class="dropdown-item" href="#">Solicitar Troca</a></li>
                                </ul>
                            </div>
                            <h6 class="fw-bold">00/00/0000</h6>
                            <h6 class="text-success">Entregue</h6>
                            <h6>Chegou no dia 00/00/0000</h6>
                            <div class="row border-top p-3">
                                <div class="col-2">
                                    <div class="card produto mb-3">
                                        <img alt="produto" src="\LootCommerce\assets\img\toga_himiko.jpg" class="p-2">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="dropdown float-end ">
                                        <a aria-expanded="false" data-bs-toggle="dropdown" class="text-decoration-none">
                                            <span class="material-icons">more_vert</span>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">Solicitar Troca</a></li>
                                        </ul>
                                    </div>
                                    <h6 class="text-muted">Categoria</h6>
                                    <h5>Nome</h5>
                                    <h6>Quantidade: 00</h6>
                                    <h6>Valor: R$ 00,00</h6>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!--cupons-->
                    <section class="tab-pane fade" id="v-pills-cupons" role="tabpanel" aria-labelledby="v-pills-cupons-tab">
                        <h4 class="fw-bold p-3 m-0 border text-center">Cupons</h4>
                        <div class="row row-cols-xl-2 p-4">
                            <c:forEach var="cupom" items="${clienteLogado.cupons}">
                                <div class="col">
                                    <div class="border row p-2 rounded m-1">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="fw-bold">${cupom.tipo}</h6>
                                            <h6>Validade: ${cupom.dataValidade}</h6>
                                        </div>
                                        <div class="d-flex justify-content-between">
                                            <h5>${cupom.nome}</h5>
                                            <h5>R$ ${cupom.valor}</h5>
                                        </div>
                                        <h6>${cupom.descricao}</h6>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </section>
                </div>

            </div>
        </div>
        </div>
    </main>

</body>

<script src='<c:url value="/webjars/jquery/3.6.0/jquery.min.js"/>'></script>
<script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>

<script>
    $(document).ready(function () {
        $('#cpf').mask('000.000.000-00', { reverse: true });
        $('#cep').mask('00000-000');
        $('#phone').mask('00 00000-0000');
        $('#dtValidade').mask('00/0000');
        $('#numCartao').mask('0000 0000 0000 0000');
    });
</script>

<c:if test="${not empty requestScope.mensagem}">
    <script>
        $(window).on('load', function () {
            $('#erro').modal('show');
        });
    </script>
</c:if>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8">
    <title>Confirmar compra</title>
    <link rel="stylesheet" type="text/css" href="/LootCommerce/webjars/bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/LootCommerce/webjars/material-design-icons/4.0.0/material-icons.css">
    <link rel="stylesheet" type="text/css" href="/LootCommerce/assets/css/main.css">
</head>

<body class="bg-default">
    <header>
        <div class="bg-dark">

            <div class="navbar">
                <div class="container">
                    <a href="/LootCommerce/index.jsp">
                        <img src="/LootCommerce/assets/img/logo_header.png" max-height="100" alt="fanLoot" width="130">
                    </a>

                    <div class="col-lg-6">
                        <div class="input-group">
                            <input id="pesquisar" type="text" placeholder="Pesquisar..." aria-label="Username"
                                aria-describedby="basic-addon1" class="form-control border-end-0">
                            <span class="btn input-group-text border border-start-0 bg-white">
                                <span class="material-icons">search</span>
                            </span>
                        </div>
                    </div>
                    <div class="d-flex align-items-center">
                        <div class="dropdown">
                            <a href="#" id="iconUsuario" data-bs-toggle="dropdown" aria-expanded="false"
                                class="text-decoration-none dropdown-toggle link-light">
                                Meus dados
                            </a>
                            <ul class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
                                <li><a id="perfil" class="dropdown-item link-light"
                                        href="/LootCommerce/clientes/perfil?operacao=listar">Perfil</a></li>
                                <li><a class="dropdown-item link-light" href="#">Endereços</a></li>
                                <li><a class="dropdown-item link-light" href="#">Cartões</a></li>
                                <li>
                                    <hr class="dropdown-divider link-light">
                                </li>
                                <li>
                                    <form action="/LootCommerce/logout">
                                        <input type="submit" class="dropdown-item link-light" id="sair" value="Sair">
                                    </form>
                                </li>
                            </ul>
                        </div>
                        <div><button type="button" class="btn btn-outline-light ms-3">
                                <span class="material-icons inline-icon">shopping_cart</span>Carrinho
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <main class="wrapper container mt-3 mb-3">
        <div class="row bg-white rounded p-4">
            <div class="col-lg-8">
                <h3 class="mb-3 fw-bold">Confira e confirme sua compra</h3>
                <div class="row border rounded p-3 m-2">
                    <div class="col-6 p-3">
                        <strong>Endereço de entrega</strong>
                        <!--Aciona modal alterar endereço entrega-->
                        <a type="button" id="alterarEndereco" class="text-decoration-none" data-bs-toggle="modal"
                            data-bs-target="#alterarEnderecoModal">
                            Alterar
                        </a>
                        <h6>Nome endereço</h6>
                        <h6>Logradouro, número</h6>
                        <h6>Estado - País</h6>
                        <h6>CEP</h6>
                        <h6>Observação</h6>
                    </div>
                    <div class="col-6">
                        <div class="col p-3">
                            <strong>Forma de pagamento</strong>
                            <!--Aciona modal alterar forma de pagamento-->
                            <a type="button" id="alterarPagamento" class="text-decoration-none" data-bs-toggle="modal"
                                data-bs-target="#alterarFormaPagamentoModal">
                                Alterar
                            </a>
                            <h6>(Crédito) com final 0000</h6>
                        </div>
                        <div class="col p-3"><strong>Endereço de cobrança</strong>
                            <!--Aciona modal alterar endereço de cobrança-->
                            <a type="button" id="alterarEndereco" class="text-decoration-none" data-bs-toggle="modal"
                                data-bs-target="#alterarEnderecoModal">
                                Alterar
                            </a>
                            <h6>Mesmo que endereço de entrega</h6>
                        </div>
                    </div>
                    <div class="col-6 p-3"><strong>Cupons aplicados:</strong>
                        <div class="toast align-items-center text-white bg-primary border-0 fade show" role="alert"
                            aria-live="assertive" aria-atomic="true">
                            <div class="d-flex">
                                <div class="toast-body">PROMOCAO</div>
                                <div class="toast-body">R$ 10,00</div>
                                <button type="button" class="btn-close btn-close-white me-2 m-auto"
                                    data-bs-dismiss="toast" aria-label="Close"></button>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 p-3"><strong>Adicionar cupom</strong>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" aria-label="Recipient's username"
                                aria-describedby="button-addon2" placeholder="Nome cupom">
                            <button type="button" id="button-addon2" class="btn btn-outline-primary">Aplicar</button>
                        </div>
                    </div>
                </div>
                <div class="row border rounded p-3 m-2">
                    <h4 class="mb-3 fw-bold">Itens</h4>
                    <div class="row border-top p-3">
                        <h6 class="mb-3 text-primary fw-bold">Data de entrega: 00 mês 0000 </h6>
                        <div class="col-3">
                            <div class="card produto mb-3">
                                <img alt="..." src="\LootCommerce\assets\img\toga_himiko.jpg" class="p-2">
                            </div>
                        </div>
                        <div class="col">
                            <h4 class="mb-3">
                                <div class="text-muted h6">Categoria</div>Nome
                            </h4>
                            <h4>R$ 100,00</h4>Quantidade: 1

                            <a class="text-decoration-none">Alterar</a>
                        </div>
                    </div>
                    <div class="row border-top p-3">
                        <h6 class="mb-3 text-primary fw-bold">Data de entrega: 00 mês 0000 </h6>
                        <div class="col-3">
                            <div class="card produto mb-3">
                                <img alt="..." src="\LootCommerce\assets\img\toga_himiko.jpg" class="p-2">

                            </div>
                        </div>
                        <div class="col">
                            <h4 class="mb-3">
                                <div class="text-muted h6">Categoria</div>Nome
                            </h4>
                            <h4>R$ 100,00</h4>Quantidade: 1
                            <a class="text-decoration-none">Alterar</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 order-md-last">
                <div class="row vstack mt-5">
                    <div class="container border rounded py-4">
                        <ul class="list-group">

                            <li class="d-flex mb-4 justify-content-between">
                                <h5 class="fw-bold ">Resumo do pedido</h5>

                            </li>
                            <li class="d-flex justify-content-between">
                                <strong class="text-muted">Itens:</strong>

                                <strong>$0.00</strong>
                            </li>
                            <li class="d-flex justify-content-between">
                                <strong class="text-muted">Frete:</strong>
                                <strong>$0.00</strong>
                            </li>
                            <li class="d-flex justify-content-between">
                                <strong class="text-muted">Desconto:</strong>
                                <strong>- R$ 0.00</strong>
                            </li>
                            <li class="d-flex justify-content-between py-3">
                                <strong class="text-muted">Total do pedido:</strong>
                                <h5 class="font-weight-bold">R$ 400,00</h5>
                            </li>
                            <a href="#" class="btn btn-primary  rounded-pill py-2 ">Confirmar pedido</a>
                        </ul>
                    </div>
                </div>

            </div>
        </div>

        <!--Modal alterar endereço-->
        <div class="modal fade" id="alterarEnderecoModal" data-bs-backdrop="static" data-bs-keyboard="false"
            tabindex="-1" aria-labelledby="alterarEnderecoLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" style="max-width:600px">
                <div class="modal-content">
                    <div class="modal-header border-0">
                        <h5 class="modal-title" id="alterarEnderecoLabel">Alterar endereço de "entrega/cobrança"</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form class="needs-validation" action="..." method="POST" novalidate="">
                        <input type="hidden" name="operacao" value="salvar">
                        <div class="modal-body">
                            <div class="row g-2 mb-4">
                                <div class="col-md-12 h6 fw-bold">Endereços salvos</div>
                                <div class="border p-2 rounded">
                                    <div class="col-md-12 d-flex justify-content-between">
                                        <div class="form-check">
                                            <input class="form-check-input" id="flexRadioDefault1" type="radio"
                                                name="flexRadioDefault">
                                            <label class="form-check-label fw-bold">Nome endereço</label>
                                        </div>
                                        <span class="d-block">CEP: 00000-000</span><span>Logradouro, nº 000</span>
                                    </div>
                                </div>
                                <div class="border p-2 rounded">
                                    <div class="col-md-12 d-flex justify-content-between">
                                        <div class="form-check">
                                            <input class="form-check-input" id="flexRadioDefault1" type="radio"
                                                name="flexRadioDefault">
                                            <label class="form-check-label fw-bold">Nome endereço</label>
                                        </div>
                                        <span class="d-block">CEP: 00000-000</span><span>Logradouro, nº 000</span>
                                    </div>
                                </div>
                                <div class="border p-2 rounded">
                                    <div class="col-md-12 d-flex justify-content-between">
                                        <div class="form-check">
                                            <input class="form-check-input" id="flexRadioDefault1" type="radio"
                                                name="flexRadioDefault">
                                            <label class="form-check-label fw-bold">Nome endereço</label>
                                        </div>
                                        <span class="d-block">CEP: 00000-000</span><span>Logradouro, nº 000</span>
                                    </div>
                                </div>
                            </div>
                            <div class="row g-2">
                                <div class="col-md-12 h6 fw-bold">Utilizar novo endereço</div>
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="tpLogradouro" name="tpLogradouro"
                                            required="">
                                        <label for="tpLogradouro" class="form-label">Nome</label>
                                        <div class="invalid-feedback">Insira um tipo de logradouro.</div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <select class="form-select" id="tpResidencia" name="tpResidencia" required="">
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
                                        <input type="text" class="form-control" id="tpLogradouro" name="tpLogradouro"
                                            required="">
                                        <label for="tpLogradouro" class="form-label">Tipo de logradouro</label>
                                        <div class="invalid-feedback">Insira um tipo de logradouro.</div>
                                    </div>
                                </div>
                                <div class="col-md-10">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="logradouro" name="logradouro"
                                            required="">
                                        <label for="logradouro" class="form-label">Logradouro</label>
                                        <div class="invalid-feedback">Insira o logradouro.</div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="numero" name="numero" required="">
                                        <label for="numero" class="form-label">Número</label>
                                        <div class="invalid-feedback">Insira o número.</div>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="bairro" name="bairro" required="">
                                        <label for="bairro" class="form-label">Bairro</label>
                                        <div class="invalid-feedback">Insira um bairro.</div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="cep" name="cep" required="">
                                        <label for="cep" class="form-label">CEP</label>
                                        <div class="invalid-feedback">Insira um cep válido.</div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-floating">
                                        <select class="form-select" id="cidade" name="cidade" required="">
                                            <option value="">Selecione</option>
                                            <option>São Paulo</option>
                                        </select>
                                        <label>Cidade</label>
                                        <div class="invalid-feedback">Selecione uma cidade.</div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-floating">
                                        <select class="form-select" id="estado" name="estado" required="">
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
                                        <select class="form-select" id="pais" name="pais" required="">
                                            <option value="">Selecione</option>
                                            <option>Brasil</option>
                                        </select>
                                        <label>País</label>
                                        <div class="invalid-feedback">Selecione um país.</div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="observacao" name="observacao">
                                        <label for="observacao" class="form-label">Observação<span
                                                class="text-muted">(Opcional)</span></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer border-0">
                            <input type="submit" id="btnAlterarEndereco" class="btn btn-success" value="Atualizar">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!--Modal alterar forma de pagamento-->
        <div class="modal fade" id="alterarFormaPagamentoModal" data-bs-backdrop="static" data-bs-keyboard="false"
            tabindex="-1" aria-labelledby="alterarFormaPagamentoLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header border-0">
                        <h5 class="modal-title" id="alterarFormaPagamentoLabel">Forma de pagamento</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form class="needs-validation" action="..." method="POST" novalidate="">
                        <input type="hidden" name="operacao" value="salvar">
                        <div class="modal-body">
                            <div class="row g-2 mb-4">
                                <div class="col-md-12 h6 fw-bold">Cartões salvos</div>
                                <div class="border p-2 rounded">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <div class="col-md-12 d-flex justify-content-between">
                                            <span>Imagem bandeira</span><span class="fw-bold d-block">**** **** ****
                                                1234</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="border p-2 rounded">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <div class="col-md-12 d-flex justify-content-between">
                                            <span>Imagem bandeira</span><span class="fw-bold d-block">**** **** ****
                                                1234</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row g-2">
                                <div class="col-md-12 h6 fw-bold">Adicionar cartão</div>
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="nomeCartao" name="nomeCartao"
                                            required>
                                        <label for="nomeCartao" required>Nome impresso</label>
                                        <div class="invalid-feedback">Insira um nome para o cartão.</div>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="numCartao" name="numCartao"
                                            required="">
                                        <label for="numCartao" class="form-label">Número do cartão</label>
                                        <div class="invalid-feedback">Insira um número para o cartão.</div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-floating">
                                        <input class="form-control" id="dtValidade" name="dtValidade" required="">
                                        <label for="nomeCartao" class="form-label">Validade</label>

                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="codigoCartao" name="codigoCartao"
                                            required="">
                                        <label for="nomeCartao" class="form-label">CVV</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer border-0">
                            <input type="submit" id="btnAlterarFormaPagamento" value="Atualizar"
                                class="btn btn-success">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        </div>
    </main>
</body>

<c:import url="/includes/footer.jsp" charEncoding="UTF-8" />

<script src="/LootCommerce/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"></script>
<script src="/LootCommerce/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>

</html>
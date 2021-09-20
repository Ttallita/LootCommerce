<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8" />
    <title>Carrinho</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
    <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/main.css' />
</head>

<body class="bg-default">

    <c:import url="/includes/header.jsp" charEncoding="UTF-8" />

    <main class="wrapper container mt-3">
        <div class="row mt-3 mb-3 bg-white rounded p-4">

            <div class="col-lg-9">
                <h3 class="mb-3 fw-bold">Carrinho
                    <strong class="text-muted h4">(1)</strong>
                </h3>
                <div>
                    <div class="container">
                        <div class="row  border-bottom">
                            <div class="col-3">
                                <div class="card produto mb-3">
                                    <img alt="produto" src="\LootCommerce\assets\img\toga_himiko.jpg" class="p-2">
                                </div>
                            </div>
                            <div class="col">
                                <h4 class="mb-3">
                                    <div class="text-muted h6">Categoria</div>
                                    Nome
                                </h4>
                                <div class="float-end col-2">
                                    <div class="d-flex justify-content-between">
                                        <input type="number" class="form-control">
                                    </div>
                                    <div class="text-muted h6 small">10 disponíveis</div>
                                </div>
                                <h4>R$ 100,00</h4>
                                <div class="d-flex col-12 justify-content-between">
                                    <a class="text-decoration-none">Excluir</a>
                                    <a class="text-decoration-none" href="/LootCommerce/cliente/confirmarCompra.jsp">Comprar agora</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 order-md-last">
                <div class="row vstack mt-5">
                    <div class="p-0 mb-2">
                        <a type="button" id="alterarEndereco" class="text-decoration-none" data-bs-toggle="modal"
                            data-bs-target="#alterarEnderecoModal">
                            Envio para casa de Samuel Silva
                            <span class="material-icons inline-icon">keyboard_arrow_down</span></a>
                    </div>
                    <div class="container border rounded py-4">
                        <strong class="text-muted">Adicionar cupom</strong>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" aria-label="Recipient's username"
                                aria-describedby="button-addon2" placeholder="Nome cupom">
                            <button class="btn btn-primary" type="button" id="button-addon2">Aplicar</button>
                        </div>
                        <div class="toast align-items-center text-white bg-primary border-0 fade show" role="alert"
                            aria-live="assertive" aria-atomic="true">
                            <div class="d-flex">
                                <div class="toast-body p-2">PROMOCAO</div>
                                <div class="toast-body p-2">R$ 10,00</div>
                                <button type="button" class="btn-close btn-close-white me-2 m-auto"
                                    data-bs-dismiss="toast" aria-label="Close"></button>
                            </div>
                        </div>
                    </div>
                    <div class="container border rounded mt-3 py-4">
                        <ul class="list-group">

                            <li class="d-flex justify-content-between">
                                <strong class="text-muted">Carrinho:</strong>
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
                                <strong class="text-muted">Total:</strong>
                                <h5 class="font-weight-bold">R$ 400,00</h5>
                            </li>
                            <a href="/LootCommerce/cliente/confirmarCompra.jsp"
                                class="btn btn-primary rounded-pill py-2 ">Comprar carrinho</a>
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
                        <h5 class="modal-title" id="alterarEnderecoLabel">Alterar endereço de entrega</h5>
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
    </main>

</body>

<c:import url="/includes/footer.jsp" charEncoding="UTF-8" />

<script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>

</html>
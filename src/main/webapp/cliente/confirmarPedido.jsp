<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page buffer="64kb" %>

<html>

<head>
    <meta charset="UTF-8">
    <title>Confirmar pedido</title>
    <link rel="stylesheet" type="text/css" href="/LootCommerce/webjars/bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/LootCommerce/webjars/material-design-icons/4.0.0/material-icons.css">
    <link rel="stylesheet" type="text/css" href="/LootCommerce/assets/css/main.css">
</head>

<body class="bg-default">
    <c:import url="/includes/header.jsp" charEncoding="UTF-8"/>

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
                    </div>
                    <div class="col-6 p-3">
                        <strong>Cupons aplicados:</strong>
                        <div class="toast align-items-center text-white bg-primary border-0 fade show" aria-live="assertive" aria-atomic="true" role="alert">
                            <div class="p-2">
                                <button type="button" data-bs-dismiss="toast" aria-label="Close" class="btn-close btn-close-white me-2"></button>
                                <div class="d-flex justify-content-between">
                                    <h6 class="fw-bold">${cupom.tipo}</h6>
                                    <h7>Validade: ${cupom.dataValidade}</h7>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <h5>${cupom.nome}</h5>
                                    <h5>R$ ${cupom.valor}</h5>
                                </div>
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
                                <h6 class="text-muted">Categoria</h6>Nome
                            </h4>
                            <h4>R$ 100,00</h4>Quantidade: 1
                            <a class="text-decoration-none">Alterar</a>
                        </div>
                    </div>
                    <div class="row border-top p-3">
                        <h6 class="mb-3 text-primary fw-bold">Data de entrega: 00 mês 0000 </h6>
                        <div class="col-3">
                            <div class="card produto mb-3">
                                <img alt="produto" src="\LootCommerce\assets\img\toga_himiko.jpg" class="p-2">
                            </div>
                        </div>
                        <div class="col">
                            <h4 class="mb-3">
                                <h6 class="text-muted">Categoria</h6>Nome
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
                            <a href="/LootCommerce/cliente/pedidoConfirmado.jsp" class="btn btn-primary  rounded-pill py-2 ">Confirmar pedido</a>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!--Modal alterar endereço-->
        <c:import url="/includes/alterarEnderecoModal.jsp" charEncoding="UTF-8"/>

        <!--Modal alterar forma de pagamento-->
        <div class="modal fade" id="alterarFormaPagamentoModal" data-bs-backdrop="static" data-bs-keyboard="false"
            tabindex="-1" aria-labelledby="alterarFormaPagamentoLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header border-0">
                        <h5 class="modal-title" id="alterarFormaPagamentoLabel">Alterar forma de pagamento</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form class="needs-validation" action="..." method="POST" novalidate="">
                        <input type="hidden" name="operacao" value="salvar">
                        <div class="modal-body">
                            <div class="row g-2 mb-4">
                                <h6 class="col-md-12 fw-bold">Cartões salvos</h6>
                                <div class="border p-2 rounded">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <div class="col-md-12 d-flex justify-content-between">
                                            <span>Imagem bandeira</span><span class="fw-bold d-block">**** **** **** 1234</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="border p-2 rounded">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <div class="col-md-12 d-flex justify-content-between">
                                            <span>Imagem bandeira</span><span class="fw-bold d-block">**** **** **** 1234</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <button data-bs-toggle="tab" data-bs-target="#alterarFormaPagamento" type="button" role="tab" aria-selected="false" class="nav-link fw-bold" id="alterarFormaPagamentoBtn">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <label class="form-check-label fw-bold">Adicionar cartão</label>
                                    </div>
                                </button>
                            </div>
                            <div class="tab-content" id="nav-tabContent">
                                <div role="tabpanel" class="tab-pane fade" id="alterarFormaPagamento">
                                    <div class="row g-2">
                                        <div class="col-md-9">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="nomeCartao" name="nomeCartao" placeholder="" required>
                                                <label for="nomeCartao">Nome impresso</label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-floating">
                                              <select class="form-select" id="bandeira" name="bandeira" required>
                                                <option value="">Selecione</option>
                                                <option>Visa</option>
                                                <option>Mastercard</option>
                                              </select>
                                              <label>Bandeira</label>
                                            </div>
                                          </div>
                                        <div class="col-md-8">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="numCartao" name="numCartao" placeholder="" required>
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
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer border-0">
                            <input type="submit" id="alterarFormaPagamentoBtn" value="Atualizar" class="btn btn-success">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>
</body>

<c:import url="/includes/footer.jsp" charEncoding="UTF-8" />

<script src='<c:url value="/webjars/jquery/3.6.0/jquery.min.js"/>'></script>
<script src="/LootCommerce/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"></script>
<script src="/LootCommerce/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>
<script>
    $(document).ready(function () {
        $('#cep').mask('00000-000');
        $('#numCartao').mask('0000 0000 0000 0000');
        $('#dtValidade').mask('00/0000');
        $('#codigoCartao').mask('000');
    });
</script>

</html>
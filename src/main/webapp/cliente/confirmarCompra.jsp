<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page buffer="64kb" %>

<html data-lt-installed="true">

<head>
    <meta charset="UTF-8">
    <title>Confirmar compra</title>
    <link rel="stylesheet" type="text/css" href="/LootCommerce/webjars/bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/LootCommerce/webjars/material-design-icons/4.0.0/material-icons.css">
    <link rel="stylesheet" type="text/css" href="/LootCommerce/assets/css/style.css">

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
                <div>
                    <div class="">
                        <h3 class="mb-3 fw-bold">Confira e confirme sua compra</h3>
                        <div class="row border rounded p-3 m-2">
                            <div class="col-6  p-3">
                                <strong>Endereço de entrega</strong>
                                <a class="text-decoration-none h6">Alterar</a>
                                <h6>Nome endereço</h6>
                                <h6>Logradouro, número</h6>
                                <h6>Estado - País</h6>
                                <h6>CEP</h6>
                                <h6>Observação</h6>
                            </div>
                            <div class="col-6">
                                <div class="col p-3"><strong>Forma de pagamento</strong><a
                                        class="text-decoration-none h6">Alterar</a>
                                    <h6>(Crédito) com final 0000</h6>
                                </div>
                                <div class="col p-3"><strong>Endereço de cobrança</strong><a
                                        class="text-decoration-none h6">Alterar</a>
                                    <h6>Mesmo que endereço de entrega</h6>
                                </div>
                            </div>
                            <div class="col-6  p-3"><strong>Cupons aplicados:</strong>
                                <div class="toast align-items-center text-white bg-primary border-0 fade show"
                                    role="alert" aria-live="assertive" aria-atomic="true">
                                    <div class="d-flex">
                                        <div class="toast-body">PROMOCAO</div>
                                        <div class="toast-body">R$ 10,00</div>
                                        <button type="button" class="btn-close btn-close-white me-2 m-auto"
                                            data-bs-dismiss="toast" aria-label="Close"></button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6  p-3"><strong>Adicionar cupom</strong>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" aria-label="Recipient's username"
                                        aria-describedby="button-addon2" placeholder="Nome cupom">
                                    <button type="button" id="button-addon2"
                                        class="btn btn-outline-primary">Aplicar</button>
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
    </main>

    <c:import url="/includes/footer.jsp" charEncoding="UTF-8" />

    <script src="/LootCommerce/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"></script>
    <script src="/LootCommerce/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>

</body>

</html>
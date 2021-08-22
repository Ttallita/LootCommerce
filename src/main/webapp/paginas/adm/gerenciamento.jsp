<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
  <meta charset="UTF-8"/>
  <title>Gerenciamento</title>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>'/>
  <link href="../../assets/css/style.css" rel="stylesheet" />
</head>

<body>
  <!-- Navigation-->
  <c:import url="/includes/header-Administrador.jsp" charEncoding="UTF-8"/>

	<div class="wrapper container mt-3">
		<main class="content">
			<div class="container-fluid p-0">
				<h1 class="h3 mb-3">Administrador</h1>
				<div class="row">
					<div class="col-md-3 col-xl-2">
						<div class="list-group btn-group-vertical">
							<button class="active btn btn-primary" id="v-pills-principal-tab" data-bs-toggle="pill" data-bs-target="#v-pills-principal" type="button" aria-controls="v-pills-principal" aria-selected="true">
                                <span class="material-icons">home</span>Principal</button>
                                
                            <button class="btn btn-primary" id="v-pills-clientes-tab" data-bs-toggle="pill" data-bs-target="#v-pills-clientes" type="button" aria-controls="v-pills-clientes" aria-selected="false">
                                <span class="material-icons">people</span>Clientes</button>
                                
                            <button class="btn btn-primary" id="v-pills-trocas-tab" data-bs-toggle="pill" data-bs-target="#v-pills-trocas" type="button" aria-controls="v-pills-trocas" aria-selected="false">
                                <span class="material-icons">compare_arrows</span>Trocas</button>
                                                    
                            <button class="btn btn-primary" id="v-pills-vendas-tab" data-bs-toggle="pill" data-bs-target="#v-pills-vendas" type="button" aria-controls="v-pills-vendas" aria-selected="false">
                                <span class="material-icons">show_chart</span>Vendas</button>
                                
                            <button class="btn btn-primary" id="v-pills-estoque-tab" data-bs-toggle="pill" data-bs-target="#v-pills-estoque" type="button" aria-controls="v-pills-estoque" aria-selected="false">
                                <span class="material-icons">all_inbox</span>Estoque</button>
                        </div>
					</div>

					<div class="col-md-9 col-xl-10">
						<div class="tab-content">
                            <!--principal-->
                            <div class="tab-pane fade active show" id="v-pills-principal" role="tabpanel" aria-labelledby="v-pills-principal-tab">
								<div class="card">
									<div class="card-body">
										<h5 class="card-title">Principal</h5>
									</div>
								</div>
                            </div>

                            <!--vendas-->
							<div class="tab-pane fade" id="v-pills-vendas" role="tabpanel" aria-labelledby="v-pills-vendas-tab">
								<div class="card">
									<div class="card-body">
                                        <h5 class="card-title">Vendas</h5>
									</div>
								</div>
								<div class="card">
									<div class="card-body">
									</div>
								</div>
							</div>

                            <!--clientes-->
                            <div class="tab-pane fade" id="v-pills-clientes" role="tabpanel" aria-labelledby="v-pills-clientes-tab">
								<div class="card">
									<div class="card-body">
										<h5 class="card-title">Clientes</h5>
                                        <a class="btn btn-primary" href="cadastrarCliente-Administrador.jsp" role="button">
                                            <span class="material-icons">group_add</span>Cadastrar cliente</a>
                                        <div class="table-responsive">
                                            <table class="table table-hover table-bordered table-sm" cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Nome</th>
                                                        <th>CPF</th>
                                                        <th>Gênero</th>
                                                        <th>Rank</th>
                                                        <th>Nascimento</th>
                                                        <th>Opções</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                    <td>1</td>
                                                    <td>Tiger Nixon</td>
                                                    <td>000.000.000-00</td>
                                                    <td>M</td>
                                                    <td>61</td>
                                                    <td>2011/04/25</td>
                                                    <td>
                                                        <div>
                                                            <button class="btn btn-outline-dark" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                                                <span class="material-icons">
                                                                    list
                                                                </span>
                                                            </button>
                                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                            <li><a class="dropdown-item" href="/Ecommerce/paginas/adm/consultaTransacoes.jsp">Consultar Transações</a></li>
                                                            <li><a class="dropdown-item" href="/Ecommerce/paginas/adm/editarCliente-Administrador.jsp">Editar</a></li>
                                                            <li><hr class="dropdown-divider link-light"></li>
                                                            <li><a class="dropdown-item" href="#">Inativar</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>Garrett Winters</td>
                                                        <td>000.000.000-00</td>
                                                        <td>M</td>
                                                        <td>63</td>
                                                        <td>2011/07/25</td>
                                                    <td>
                                                        <div>
                                                            <button class="btn btn-outline-dark" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                                                <span class="material-icons">
                                                                    list
                                                                </span>
                                                            </button>
                                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                            <li><a class="dropdown-item" href="#">Consultar Transações</a></li>
                                                            <li><a class="dropdown-item" href="#">Editar</a></li>
                                                            <li><hr class="dropdown-divider link-light"></li>
                                                            <li><a class="dropdown-item" href="#">Inativar</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                    </tr>
                                                    <tr class="table-secondary">
                                                        <td class="table-secondary">3</td>
                                                        <td class="table-secondary">Bruno Nash</td>
                                                        <td class="table-secondary">000.000.000-00</td>
                                                        <td class="table-secondary">M</td>
                                                        <td class="table-secondary">38</td>
                                                        <td class="table-secondary">2011/05/03</td>
                                                    <td class="table-secondary">
                                                        <div>
                                                            <button class="btn btn-outline-dark" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                                                <span class="material-icons">
                                                                    list
                                                                </span>
                                                            </button>
                                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                            <li><a class="dropdown-item" href="#">Consultar Transações</a></li>
                                                            <li><a class="dropdown-item" href="#">Editar</a></li>
                                                            <li><hr class="dropdown-divider link-light"></li>
                                                            <li><a class="dropdown-item" href="#">Ativar</a></li>
                                                            </ul>
                                                        </div>
                                                    </tr>
                                                    <tr>
                                                        <td>4</td>
                                                        <td>Sakura Yamamoto</td>
                                                        <td>000.000.000-00</td>
                                                        <td>N/A</td>
                                                        <td>37</td>
                                                        <td>2009/08/19</td>
                                                    <td>
                                                        <div>
                                                            <button class="btn btn-outline-dark" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                                                <span class="material-icons">
                                                                    list
                                                                </span>
                                                            </button>
                                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                            <li><a class="dropdown-item" href="#">Consultar Transações</a></li>
                                                            <li><a class="dropdown-item" href="#">Editar</a></li>
                                                            <li><hr class="dropdown-divider link-light"></li>
                                                            <li><a class="dropdown-item" href="#">Inativar</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                    <tr>
                                                        <td>5</td>
                                                        <td>Thor Walton</td>
                                                        <td>000.000.000-00</td>
                                                        <td>M</td>
                                                        <td>61</td>
                                                        <td>2013/08/11</td>
                                                    <td>
                                                        <div>
                                                            <button class="btn btn-outline-dark" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                                                <span class="material-icons">
                                                                    list
                                                                </span>
                                                            </button>
                                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                            <li><a class="dropdown-item" href="#">Consultar Transações</a></li>
                                                            <li><a class="dropdown-item" href="#">Editar</a></li>
                                                            <li><hr class="dropdown-divider link-light"></li>
                                                            <li><a class="dropdown-item" href="#">Inativar</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                    </tr>
                                                    <tr>
                                                        <td>6</td>
                                                        <td>Donna Snider</td>
                                                        <td>000.000.000-00</td>
                                                        <td>F</td>
                                                        <td>27</td>
                                                        <td>2011/01/25</td>
                                                    <td>
                                                        <div>
                                                            <button class="btn btn-outline-dark" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                                                <span class="material-icons">
                                                                    list
                                                                </span>
                                                            </button>
                                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                            <li><a class="dropdown-item" href="#">Consultar Transações</a></li>
                                                            <li><a class="dropdown-item" href="#">Editar</a></li>
                                                            <li><hr class="dropdown-divider link-light"></li>
                                                            <li><a class="dropdown-item" href="#">Inativar</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
									</div>
								</div>
                            </div>

                            <!--trocas-->
                            <div class="tab-pane fade" id="v-pills-trocas" role="tabpanel" aria-labelledby="v-pills-trocas-tab">
                            <div class="card">
									<div class="card-body">
										<h5 class="card-title">Trocas</h5>
									</div>
								</div>
                            </div>

                            <!--estoque-->
                            <div class="tab-pane fade" id="v-pills-estoque" role="tabpanel" aria-labelledby="v-pills-estoque-tab">
                                <div class="card">
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

<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>

</html>
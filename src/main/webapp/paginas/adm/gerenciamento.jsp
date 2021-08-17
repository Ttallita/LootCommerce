<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
  <meta charset="UTF-8"/>
  <title>Clientes</title>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>'/>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />

  <style>
    .card {
      padding: 30px 40px;
    }
  </style>
</head>

<body>
  <!-- Navigation-->
  <c:import url="/includes/header-Administrador.jsp" charEncoding="UTF-8"/>

  <div class="container mt-3">
    <div class="bd-example">
      <div class="d-flex align-items-start">
        <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
          <button class="nav-link active" id="v-pills-principal-tab" data-bs-toggle="pill" data-bs-target="#v-pills-principal" type="button" role="tab" aria-controls="v-pills-principal" aria-selected="false">principal</button>
          <button class="nav-link" id="v-pills-clientes-tab" data-bs-toggle="pill" data-bs-target="#v-pills-clientes" type="button" role="tab" aria-controls="v-pills-clientes" aria-selected="true">clientes</button>
          <button class="nav-link" id="v-pills-trocas-tab" data-bs-toggle="pill" data-bs-target="#v-pills-trocas" type="button" role="tab" aria-controls="v-pills-trocas" aria-selected="false">trocas</button>
          <button class="nav-link" id="v-pills-estoque-tab" data-bs-toggle="pill" data-bs-target="#v-pills-estoque" type="button" role="tab" aria-controls="v-pills-estoque" aria-selected="false">estoque</button>
          <button class="nav-link" id="v-pills-vendas-tab" data-bs-toggle="pill" data-bs-target="#v-pills-vendas" type="button" role="tab" aria-controls="v-pills-vendas" aria-selected="false">vendas</button>
        </div>
        <div class="tab-content" id="v-pills-tabContent">
          <div class="tab-pane fade active show" id="v-pills-principal" role="tabpanel" aria-labelledby="v-pills-principal-tab">
            principal
          </div>

          <div class="tab-pane fade" id="v-pills-clientes" role="tabpanel" aria-labelledby="v-pills-clientes-tab">

            <table id="datatablesSimple">
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
                          <li><a class="dropdown-item" href="#">Consultar Transações</a></li>
                          <li><a class="dropdown-item" href="#">Editar</a></li>
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
                          <li><a class="dropdown-item" href="#">Inativar</a></li>
                          </ul>
                      </div>
                    </td>
                  </tr>
                  <tr>
                      <td>3</td>
                      <td>Bruno Nash</td>
                      <td>000.000.000-00</td>
                      <td>M</td>
                      <td>38</td>
                      <td>2011/05/03</td>
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
                          <li><a class="dropdown-item" href="#">Inativar</a></li>
                          </ul>
                      </div>
                    </td>
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
                          <li><a class="dropdown-item" href="#">Inativar</a></li>
                          </ul>
                      </div>
                    </td>
                  </tr>
              </tbody>
          </table>
          </div>
          
          <div class="tab-pane fade" id="v-pills-trocas" role="tabpanel" aria-labelledby="v-pills-trocas-tab">
          <p><strong>This is some placeholder content the trocas tab's associated content.</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
          </div>
          <div class="tab-pane fade" id="v-pills-estoque" role="tabpanel" aria-labelledby="v-pills-estoque-tab">
          <p><strong>This is some placeholder content the Settings tab's associated content.</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
          </div>
          <div class="tab-pane fade" id="v-pills-vendas" role="tabpanel" aria-labelledby="v-pills-vendas-tab">
            <p><strong>This is some placeholder content the Settings tab's associated content.</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
          </div>
        </div>
      </div>
    </div>
  </div>

</body>
<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<script src="form-validation.js"></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.min.js"/>'></script>
<script src="assets/js/formatacao-tabela.js"></script>
<script src="assets/js/datatables-simple-demo.js"></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.min.js"/>'></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>

</html>
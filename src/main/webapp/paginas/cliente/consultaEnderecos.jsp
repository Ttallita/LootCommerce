<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
  <meta charset="UTF-8"/>
  <title>Clientes</title>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>'/>
  <link rel="stylesheet" type="text/css" href='../../assets/css/style.css'/>
</head>
<body>
    <!-- Navigation-->
    <c:import url="/includes/header.jsp" charEncoding="UTF-8"/>
    <div class="container mt-3">
        <main>
            <div class="row">
                <div class="col-3">
                    <h4 class="d-flex justify-content-between align-items-center mb-3">
                        <span class="text-primary">André Gomes</span>
                    </h4>
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home" aria-hidden="true"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                                Principal
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-arrow-left-right" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M1 11.5a.5.5 0 0 0 .5.5h11.793l-3.147 3.146a.5.5 0 0 0 .708.708l4-4a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708.708L13.293 11H1.5a.5.5 0 0 0-.5.5zm14-7a.5.5 0 0 1-.5.5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H14.5a.5.5 0 0 1 .5.5z"/></svg>
                                Meus endereços
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-box-seam" viewBox="0 0 16 16"><path d="M8.186 1.113a.5.5 0 0 0-.372 0L1.846 3.5l2.404.961L10.404 2l-2.218-.887zm3.564 1.426L5.596 5 8 5.961 14.154 3.5l-2.404-.961zm3.25 1.7-6.5 2.6v7.922l6.5-2.6V4.24zM7.5 14.762V6.838L1 4.239v7.923l6.5 2.6zM7.443.184a1.5 1.5 0 0 1 1.114 0l7.129 2.852A.5.5 0 0 1 16 3.5v8.662a1 1 0 0 1-.629.928l-7.185 2.874a.5.5 0 0 1-.372 0L.63 13.09a1 1 0 0 1-.63-.928V3.5a.5.5 0 0 1 .314-.464L7.443.184z"/></svg>
                                Cartões de crédito
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-graph-up" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M0 0h1v15h15v1H0V0zm10 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V4.9l-3.613 4.417a.5.5 0 0 1-.74.037L7.06 6.767l-3.656 5.027a.5.5 0 0 1-.808-.588l4-5.5a.5.5 0 0 1 .758-.06l2.609 2.61L13.445 4H10.5a.5.5 0 0 1-.5-.5z"/></svg>
                                Mudar senha
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-9">
                    <div class="card p-3">
                        <h3 class="mb-2">Endereços cadastrados</h3>
                        <div class="d-grid gap-2">
                            <button class="btn btn-success" type="button">Novo endereço</button>
                        </div>
                        <table class="table mt-2">
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
                            <tr>
                              <td>Rua 25 de março</td>
                              <td>123</td>
                              <td>Castro Alves</td>
                              <td>04513-205</td>
                              <td>São Paulo</td>
                              <td>São Paulo</td>
                              <td>Brasil</td>
                              <td>Cobrança</td>
                              <td>
                                <span class="material-icons text-primary">
                                    mode_edit
                                </span>
                              </td>
                              <td>
                                <span class="material-icons text-danger">
                                    delete
                                </span>
                              </td>
                            </tr>
                            <tr>
                              <td>Rua 25 de março</td>
                              <td>123</td>
                              <td>Castro Alves</td>
                              <td>04513-205</td>
                              <td>São Paulo</td>
                              <td>São Paulo</td>
                              <td>Brasil</td>
                              <td>Entrega</td>
                              <td>
                                <span class="material-icons">
                                    mode_edit
                                </span>
                              </td>
                              <td>
                                <span class="material-icons">
                                    delete
                                </span>
                              </td>
                            </tr>
                            <tr>
                              <td>Rua 25 de março</td>
                              <td>123</td>
                              <td>Castro Alves</td>
                              <td>04513-205</td>
                              <td>São Paulo</td>
                              <td>São Paulo</td>
                              <td>Brasil</td>
                              <td>Cobrança</td>
                              <td>
                                <span class="material-icons">
                                    mode_edit
                                </span>
                              </td>
                              <td>
                                <span class="material-icons">
                                    delete
                                </span>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <c:import url="/includes/footer.jsp" charEncoding="UTF-8"/>
</body>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
</html>
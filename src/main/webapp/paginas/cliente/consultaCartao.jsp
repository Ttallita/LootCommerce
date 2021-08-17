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
                      <a class="nav-link active" aria-current="page" href="clientePerfil.jsp">
                       <span class="material-icons inline-icon">
                        account_circle
                       </span>
                        Perfil
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="alterarSenha.jsp">
                      <span class="material-icons inline-icon">
                        lock
                      </span>
                        Alterar Senha
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="consultaEnderecos.jsp">
                       <span class="material-icons inline-icon">
                        local_shipping
                       </span>
                        Endereços
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="consultaCartao.jsp">
                          <span class="material-icons inline-icon">
                            payment
                          </span>
                            Cartões
                      </a>
                    </li>
                  </ul>
                </div>
                <div class="col-9">
                    <div class="card p-3">
                        <h3 class="mb-2">Meus cartões</h3>
                        <a href="cadastroCartao.jsp">
                            <div class="d-grid gap-2">
                                <a href="cadastroCartao.jsp" class="btn btn-primary" role="button">Novo Cartão</a>
                            </div>
                        </a>
                        <table class="table mt-2">
                          <thead>
                            <tr>
                              <th scope="col">Nome Impresso</th>
                              <th scope="col">Número</th>
                              <th scope="col">Bandeira</th>
                              <th scope="col">Código</th>
                              <th scope="col">Alterar</th>
                              <th scope="col">Excluir</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>ANDRE GOMES</td>
                              <td>123131231412412</td>
                              <td>VISA</td>
                              <td>233</td>
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
                              <td>TALLITA SOUZA</td>
                              <td>123131231412412</td>
                              <td>VISA</td>
                              <td>233</td>
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
                              <td>RUAN CAMPOS</td>
                              <td>123131231412412</td>
                              <td>VISA</td>
                              <td>233</td>
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
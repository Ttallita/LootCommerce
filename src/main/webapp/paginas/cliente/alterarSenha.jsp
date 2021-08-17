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
      <div class="row g-5">
        <div class="col-md-5 col-lg-2 order-md-first">
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
        <div class="col-md-7 col-lg-10">
          <div class="card mb-4 p-3">
          <h4 class="mb-3">Conta</h4>
          <form class="needs-validation" novalidate="">
            <div class="row g-6">
              <div class="col-12">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" placeholder="" value="" required="">
                <div class="invalid-feedback">
                  Insira um email válido.
                </div>
              </div>

              <div class="col-6">
                <label for="password" class="form-label">Senha atual</label>
                <input type="password" class="form-control" id="senha" placeholder="" value="" required="">
                <div class="invalid-feedback">
                  A senha deve possuir pelo menos 8 caracteres, ter letras maiúsculas e minúsculas e conter caracteres especiais.
                </div>
              </div>

              <div class="col-6">
                <label for="password" class="form-label">Nova senha</label>
                <input type="password" class="form-control" id="senha" placeholder="" value="" required="">
                <div class="invalid-feedback">
                  A senha deve possuir pelo menos 8 caracteres, ter letras maiúsculas e minúsculas e conter caracteres especiais.
                </div>
              </div>

              <div class="col-6">
                <label for="password" class="form-label">Confirme a nova senha</label>
                <input type="password" class="form-control" id="senha" placeholder="" value="" required="">
                <div class="invalid-feedback">
                  A senha deve possuir pelo menos 8 caracteres, ter letras maiúsculas e minúsculas e conter caracteres especiais.
                </div>
              </div>
            </div>
            <hr class="my-4">
            <button class="btn btn-outline-dark mt-auto btn-lg" type="submit">
              Alterar senha
            </button>
          </form>
          </div>
        </div>
      </div>
    </main>
  </div>
  <c:import url="/includes/footer.jsp" charEncoding="UTF-8"/>
</body>
<script src="form-validation.js"></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
</html>
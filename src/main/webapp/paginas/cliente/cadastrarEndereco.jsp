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
        <div class="col-3">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-primary">Perfil</span>
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
          <div class="card mb-4 p-3">
           <h3>Cadastro de Endereço</h3>
           <form class="row g-3">
               <div class="col-6">
                 <label>Logradouro</label>
                 <input type="text" class="form-control" placeholder="Logradouro" aria-label="Logradouro">
               </div>
               <div class="col-2">
                 <label>Número</label>
                 <input type="number" class="form-control" placeholder="Número" aria-label="Número">
               </div>
               <div class="col-4">
                <label>Bairro</label>
                <input type="text" class="form-control" placeholder="Bairro" aria-label="Bairro">
               </div>
               <div class="col-4">
                <label>CEP</label>
                <input type="text" class="form-control" placeholder="00000-000" aria-label="CEP">
               </div>
               <div class="col-4">
                <label>Cidade</label>
                <input type="text" class="form-control" placeholder="Cidade" aria-label="Cidade">
                </div>
                <div class="col-4">
                    <label>Estado</label>
                    <input type="text" class="form-control" placeholder="Estado" aria-label="Estado">
                </div>
                <div class="col-4">
                    <label>País</label>
                    <input type="text" class="form-control" placeholder="País" aria-label="País">
                </div>
                <div class="col-4">
                    <label>Tipo de Residência</label>
                    <input type="text" class="form-control" placeholder="Tipo de Residência" aria-label="Tipo de Residência">
                </div>
                <div class="col-4">
                    <label>Tipo de Logradouro</label>
                    <input type="text" class="form-control" placeholder="Tipo de Logradouro" aria-label="Tipo de Logradouro">
                </div>
                <div class="col-4">
                    <label>Observações(Opcional)</label>
                    <input type="text" class="form-control" placeholder="Obs.." aria-label="Observações">
                </div>
               <div class="d-grid gap-2">
                <button class="btn btn-primary" type="button">Cadastrar Endereço</button>
               </div>
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
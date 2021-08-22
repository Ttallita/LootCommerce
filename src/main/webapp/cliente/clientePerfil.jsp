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
          <h4 class="mb-3">Perfil</h4>
          <form class="needs-validation" novalidate="">
            <div class="row g-6">
              <div class="col-sm-6 form-outline">
                <label for="nome" class="form-label">Nome
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <input type="text" class="form-control" id="nome" placeholder="" value="André" required="" disabled>
                <div class="invalid-feedback">
                  Insira seu primeiro nome.
                </div>
              </div>

              <div class="col-sm-6">
                <label for="sobrenome" class="form-label">Sobrenome
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <input type="text" class="form-control" id="sobrenome" placeholder="" value="Gomes" required="" disabled>
                <div class="invalid-feedback">
                  Insira seu sobrenome.
                </div>
              </div>

              <div class="col-md-4">
                <label for="pais" class="form-label">Gênero
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <select class="form-select" id="genero" required="" disabled>
                    <option>Masculino</option>
                  <option value="">Selecione</option>
                  <option>Feminimo</option>
                  <option>Outro</option>
                  <option>Prefiro não informar</option>
                </select>
                <div class="invalid-feedback">
                  Selecione uma opção.
                </div>
              </div>

              <div class="col-md-4">
                <label for="date" class="form-label">Data de nascimento
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <input type="date" class="form-control" id="date" value="04-01-1900" required="" disabled>
                <div class="invalid-feedback">
                  Selecione sua data de nascimento.
                </div>
              </div>

              <div class="col-4">
                <label for="cpf" class="form-label">CPF
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <input type="text" class="form-control" id="cpf" placeholder="000.000.000-00" value="123.456.789-10" required="" disabled>
                <div class="invalid-feedback">
                  Insira seu número de CPF.
                </div>
              </div>

              <div class="col-12">
                <label for="email" class="form-label">Email
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <input type="text" class="form-control" id="email" placeholder="" value="nome@email.com" required="" disabled>
                <div class="invalid-feedback">
                  Insira um email válido.
                </div>
              </div>

              <div class="col-6">
                <label for="senha" class="form-label">Senha
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <input type="password" class="form-control" id="senha" placeholder="" value="12345" required="" disabled>
                <div class="invalid-feedback">
                  A senha deve possuir pelo menos 8 caracteres, ter letras maiúsculas e minúsculas e conter caracteres especiais.
                </div>
              </div>

              <div class="col-md-6">
                <label for="tp-residencia" class="form-label">Tipo de residência
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <input type="text" class="form-control" id="tp-residencia" placeholder="" value="Casa" required="" disabled>
                <div class="invalid-feedback">
                  Selecione um tipo de residência válido.
                </div>
              </div>

              <div class="col-md-6">
                <label for="tp-logradouro" class="form-label">Tipo de logradouro
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <input type="text" class="form-control" id="tp-logradouro" placeholder="" value="Rua" required="" disabled>
                <div class="invalid-feedback">
                  Insira um tipo de logradouro.
                </div>
              </div>

              <div class="col-md-3">
                <label for="logradouro" class="form-label">Logradouro
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <input type="text" class="form-control" id="logradouro" placeholder="" value="Armando Flores" required="" disabled>
                <div class="invalid-feedback">
                  Insira o logradouro.
                </div>
              </div>

              <div class="col-md-2">
                <label for="numero" class="form-label">Número
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <input type="number" class="form-control" id="numero" placeholder="" value="123" required="" disabled>
                <div class="invalid-feedback">
                  Insira o número.
                </div>
              </div>

              <div class="col-md-4">
                <label for="bairro" class="form-label">Bairro
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <input type="text" class="form-control" id="bairro" placeholder="" value="Seu Armando" required="" disabled>
                <div class="invalid-feedback">
                  Insira um bairro.
                </div>
              </div>

              <div class="col-md-3">
                <label for="cep" class="form-label">CEP
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <input type="text" class="form-control" id="cep" placeholder="00000-000" required="12345-678" disabled>
                <div class="invalid-feedback">
                  Insira um cep válido.
                </div>
              </div>

              <div class="col-md-4">
                <label for="cidade" class="form-label">Cidade
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <select class="form-select" id="cidade" required="" disabled>
                    <option>São Paulo</option>
                    <option value="">Selecione</option>
                </select>
                <div class="invalid-feedback">
                  Selecione uma cidade.
                </div>
              </div>

              <div class="col-md-4">
                <label for="estado" class="form-label">Estado
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <select class="form-select" id="estado" required="" disabled>
                    <option>São Paulo</option>
                  <option value="">Selecione</option>
                </select>
                <div class="invalid-feedback">
                  Selecione um estado.
                </div>
              </div>

              <div class="col-md-4">
                <label for="pais" class="form-label">País
                    <span class="material-icons">
                        mode_edit
                    </span>
                </label>
                <select class="form-select" id="pais" required="" disabled>
                    <option>Brasil</option>
                  <option value="">Selecione</option>
                </select>
                <div class="invalid-feedback">
                   Selecione um país.
                </div>
              </div>

              <div class="col-md-12">
                <label for="observacao" class="form-label">Observação
                    <span class="material-icons">
                        mode_edit
                    </span>
                    <span class="text-muted">(Opcional)</span>
                </label>
                <input type="text" class="form-control" id="observacao" placeholder="" disabled>
              </div>

            </div>
            <hr class="my-4">
            <button class="btn btn-outline-dark mt-auto w-100 btn-lg" type="submit" disabled>
              Atualizar
            </button>
          </form>
          </div>
        </div>
      </div>
    </main>
  </div>
  <c:import url="/includes/footer.jsp" charEncoding="UTF-8"/>
</body>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
<script src="form-validation.js"></script>
</html>
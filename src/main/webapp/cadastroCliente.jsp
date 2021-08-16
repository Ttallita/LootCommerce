<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
  <meta charset="UTF-8"/>
  <title>Clientes</title>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>

  <style>
    .card {
      padding: 30px 40px;
    }
  </style>
</head>

<body>
  <!-- Navigation-->
  <c:import url="/includes/header.jsp" charEncoding="UTF-8"/>

  <div class="container-fluid px-1 py-5">
  <div class="row d-flex justify-content-center">
    <div class="col-xl-7 col-lg-8 col-md-9 col-11">
      <div class="card">
        <h5 class="mb-4">Cadastro</h5>
        <form class="needs-validation" novalidate="">
          <div class="row g-6">
            <div class="col-sm-6 form-outline">
              <label for="nome" class="form-label">Nome</label>
              <input type="text" class="form-control" id="nome" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Insira seu primeiro nome.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="sobrenome" class="form-label">Sobrenome</label>
              <input type="text" class="form-control" id="sobrenome" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Insira seu sobrenome.
              </div>
            </div>

            <div class="col-md-4">
              <label for="pais" class="form-label">Gênero</label>
              <select class="form-select" id="pais" required="">
                <option value="">Selecione</option>
                <option>Masculino</option>
                <option>Feminimo</option>
                <option>Outro</option>
                <option>Prefiro não informar</option>
              </select>
              <div class="invalid-feedback">
                Selecione um país.
              </div>
            </div>

            <div class="col-md-4">
              <label for="pais" class="form-label">Data de nascimento</label>
              <select class="form-select" id="pais" required="">
                <option value="">Selecione</option>
              </select>
              <div class="invalid-feedback">
                Selecione sua data de nascimento.
              </div>
            </div>

            <div class="col-4">
              <label for="cpf" class="form-label">CPF</label>
              <input type="text" class="form-control" id="cpf" placeholder="000.000.000-00" value="" required="">
              <div class="invalid-feedback">
                Insira seu número de CPF.
              </div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label">Email</label>
              <input type="email" class="form-control" id="email" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Insira um email válido.
              </div>
            </div>

            <div class="col-6">
              <label for="senha" class="form-label">Senha</label>
              <input type="senha" class="form-control" id="senha" placeholder="" value="" required="">
              <div class="invalid-feedback">
                A senha deve possuir pelo menos 8 caracteres, ter letras maiúsculas e minúsculas e conter caracteres especiais.
              </div>
            </div>

            <div class="col-6">
              <label for="senha-confirmacao" class="form-label">Insira sua senha novamente</label>
              <input type="senha-confirmacao" class="form-control" id="senha-confirmacao" placeholder="" value="" required="">
              <div class="invalid-feedback">
                As senhas não são as mesmas.
              </div>
            </div>

            <div class="col-md-6">
              <label for="tp-residencia" class="form-label">Tipo de residência</label>
              <select class="form-select" id="tp-residencia" required="">
                <option value="">Selecione</option>
                <option>Casa</option>
                <option>Apartamento</option>
                <option>Outro</option>
              </select>
              <div class="invalid-feedback">
                Selecione um tipo de residência válido.
              </div>
            </div>

            <div class="col-md-6">
              <label for="tp-logradouro" class="form-label">Tipo de logradouro</label>
              <input type="text" class="form-control" id="tp-logradouro" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Insira um tipo de logradouro.
              </div>
            </div>

            <div class="col-md-3">
              <label for="logradouro" class="form-label">Logradouro</label>
              <input type="text" class="form-control" id="logradouro" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Insira o logradouro.
              </div>
            </div>

            <div class="col-md-2">
              <label for="numero" class="form-label">Número</label>
              <input type="text" class="form-control" id="numero" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Insira o número.
              </div>
            </div>

            <div class="col-md-4">
              <label for="bairro" class="form-label">Bairro</label>
              <input type="text" class="form-control" id="bairro" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Insira um bairro.
              </div>
            </div>

            <div class="col-md-3">
              <label for="cep" class="form-label">CEP</label>
              <input type="text" class="form-control" id="cep" placeholder="00000-000" required="">
              <div class="invalid-feedback">
                Insira um cep válido.
              </div>
            </div>

            <div class="col-md-4">
              <label for="cidade" class="form-label">Cidade</label>
              <select class="form-select" id="cidade" required="">
                <option value="">Selecione</option>
                <option>São Paulo</option>
              </select>
              <div class="invalid-feedback">
                Selecione uma cidade.
              </div>
            </div>

            <div class="col-md-4">
              <label for="estado" class="form-label">Estado</label>
              <select class="form-select" id="estado" required="">
                <option value="">Selecione</option>
                <option>São Paulo</option>
              </select>
              <div class="invalid-feedback">
                Selecione um estado.
              </div>
            </div>

            <div class="col-md-4">
              <label for="pais" class="form-label">País</label>
              <select class="form-select" id="pais" required="">
                <option value="">Selecione</option>
                <option>Brasil</option>
              </select>
              <div class="invalid-feedback">
                 Selecione um país.
              </div>
            </div>

            <div class="col-md-12">
              <label for="observacao" class="form-label">Observação<span class="text-muted">(Opcional)</span></label>
              <input type="text" class="form-control" id="observacao" placeholder="">
            </div>

          </div>
          <hr class="my-4">
          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="termos-e-condicoes">
            <label class="form-check-label" for="termos-e-condicoes">Aceito os Termos e condições e autorizo o uso de meus dados de acordo com a Declaração de privacidade.</label>
          </div>
          <hr class="my-4">
          <button class="btn btn-outline-dark mt-auto w-100 btn-lg" type="submit">
            Cadastrar
          </button>
        </form>
      </div>

    </div>
  </div>
  </div>
</body>

<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.min.js"/>'></script>


</html>
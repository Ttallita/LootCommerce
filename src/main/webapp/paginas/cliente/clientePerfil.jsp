<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
  <meta charset="UTF-8"/>
  <title>Clientes</title>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>
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
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home" aria-hidden="true"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                Perfil
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="alterarSenha.jsp">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home" aria-hidden="true"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                Conta
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="consultaEnderecos.jsp">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-arrow-left-right" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M1 11.5a.5.5 0 0 0 .5.5h11.793l-3.147 3.146a.5.5 0 0 0 .708.708l4-4a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708.708L13.293 11H1.5a.5.5 0 0 0-.5.5zm14-7a.5.5 0 0 1-.5.5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H14.5a.5.5 0 0 1 .5.5z"/></svg>
                Meus Endereços
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="consultaCartao.jsp">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-box-seam" viewBox="0 0 16 16"><path d="M8.186 1.113a.5.5 0 0 0-.372 0L1.846 3.5l2.404.961L10.404 2l-2.218-.887zm3.564 1.426L5.596 5 8 5.961 14.154 3.5l-2.404-.961zm3.25 1.7-6.5 2.6v7.922l6.5-2.6V4.24zM7.5 14.762V6.838L1 4.239v7.923l6.5 2.6zM7.443.184a1.5 1.5 0 0 1 1.114 0l7.129 2.852A.5.5 0 0 1 16 3.5v8.662a1 1 0 0 1-.629.928l-7.185 2.874a.5.5 0 0 1-.372 0L.63 13.09a1 1 0 0 1-.63-.928V3.5a.5.5 0 0 1 .314-.464L7.443.184z"/></svg>
                Cartões de crédito
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <meta charset="UTF-8" />
  <title>Cadastro</title>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
  <link rel="stylesheet" type="text/css" href='assets/css/main.css' />
</head>

<body class="bg-gradient-primary">

  <c:if test="${not empty requestScope.mensagem}">
    <div class="modal fade" id="erro" tabindex="-1" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header bg-danger text-white">
            <h5 class="modal-title">Erro ao cadastrar</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <ul>
              <c:forEach var="mensagem" items="${mensagem}">
                <li>${mensagem}</li>
              </c:forEach>
            </ul>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Continuar</button>
          </div>
        </div>
      </div>
    </div>
  </c:if>

  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-5 d-none d-lg-block bg-cadastro-image"></div>
      <div class="col-lg-7 bg-white">
        <div class="p-3 text-center">
          <form class="needs-validation" id="form-cadastro" action="/LootCommerce/cadastro" method="POST" novalidate="">
            <input type="hidden" name="operacao" value="salvar">
            <img class="mb-4 text-center" src="/LootCommerce/assets/img/logo_fanloot.png" alt="fanLoot" max-height="100"
              width="100">
            <h1 class="h3 mb-3 fw-normal">Cadastrar</h1>

            <!--Conta-->
            <div class="row g-3 mb-3">
              <h5 class="col-12 text-start">Conta</h5>
              <div class="col-12">
                <div class="form-floating">
                  <input type="email" class="form-control" id="email" name="email" value="${cliente.usuario.email}" placeholder="">
                  <label for="email" class="form-label">Email</label>
                </div>
              </div>
              <div class="col-6">
                <div class="form-floating">
                  <input type="password" class="form-control" id="senha" name="senha" value="${cliente.usuario.senha}" placeholder="">
                  <label for="senha" class="form-label">Senha</label>
                </div>
              </div>

              <div class="col-6">
                <div class="form-floating">
                  <input type="password" class="form-control" name="senhaConfirmacao" id="senhaConfirmacao" placeholder=""
                    value="${cliente.usuario.confirmarSenha}">
                  <label for="senhaConfirmacao" class="form-label">Insira novamente</label>
                </div>
              </div>
            </div>

            <!-- Dados pessoais -->
            <div class="row g-3 mb-3">
              <h5 class="col-12 text-start">Dados pessoais</h5>
              <div class="col-sm-5 form-outline">
                <div class="form-floating">
                  <input type="text" class="form-control" id="nome" name="nome" value="${cliente.nome}" placeholder="">
                  <label for="nome" class="form-label">Nome</label>
                </div>
              </div>
              <div class="col-sm-7">
                <div class="form-floating">
                  <input type="text" class="form-control" id="sobrenome" name="sobrenome" value="${cliente.sobrenome}" placeholder="">
                  <label for="sobrenome" class="form-label">Sobrenome</label>
                </div>
              </div>

              <div class="col-md-5">
                <div class="form-floating">
                  <select class="form-select" id="genero" name="genero">
                    <option value="">Selecione</option>
                    <option>Masculino</option>
                    <option>Feminimo</option>
                    <option>Outro</option>
                    <option>Prefiro não informar</option>
                  </select>
                  <label>Gênero</label>
                </div>
              </div>

              <div class="col-md-4">
                <div class="form-floating">
                  <input type="date" class="form-control" id="date" name="date" value="${cliente.dataNascimento}" placeholder="">
                  <label for="date" class="form-label">Data de nascimento</label>
                </div>
              </div>

              <div class="col-3">
                <div class="form-floating">
                  <input type="text" class="form-control" id="cpf" name="cpf" value="${cliente.cpf}" placeholder="">
                  <label for="cpf" class="form-label">CPF</label>
                </div>
              </div>
            </div>

            <!-- Telefone -->
            <div class="row g-6 mb-3">
              <h5 class="col-12 text-start">Telefone</h5>
              <div class="col-6 form-outline">
                <div class="form-floating">
                  <select class="form-select" id="tipoTelefone" name="tipoTelefone">
                    <option value="">Selecione</option>
                    <option>Residêncial</option>
                    <option>Celular</option>>
                  </select>
                  <label for="tipoTelefone" class="form-label">Tipo de Telefone</label>
                </div>
              </div>

              <div class="col-6">
                <div class="form-floating">
                  <input type="phone" class="form-control" id="phone" placeholder=""
                    value="${cliente.telefone.ddd} ${cliente.telefone.numero}" name="phone">
                  <label for="phone" class="form-label">Número</label>
                </div>
              </div>
            </div>

            <!--Endereço-->
            <div class="row g-3 mb-3">
              <h5 class="col-12 text-start">Endereço</h5>
              <div class="col-md-7">
                <div class="form-floating">
                  <input type="text" class="form-control" id="apelido" name="apelido" placeholder=""
                    value="${cliente.enderecos[0].apelido}">
                  <label for="apelido" class="form-label">Apelido do endereço</label>
                </div>
              </div>
              <div class="col-md-5">
                <div class="form-floating">
                  <input type="text" class="form-control" value="" id="tpResidencia" name="tpResidencia" placeholder="">
                  <label for="tpResidencia" class="form-label">Tipo de residência</label>
                </div>
              </div>

              <div class="col-md-5">
                <div class="form-floating">
                  <input type="text" class="form-control" id="tpLogradouro" placeholder=""
                    value="${cliente.enderecos[0].tipoLogradouro}" name="tpLogradouro">
                  <label class="form-label">Tipo de logradouro</label>
                </div>
              </div>
              <div class="col-md-5">
                <div class="form-floating">
                  <input type="text" class="form-control" id="logradouro" value="${cliente.enderecos[0].logradouro}" placeholder=""
                    name="logradouro">
                  <label class="form-label">Logradouro</label>
                </div>
              </div>
              <div class="col-md-2">
                <div class="form-floating">
                  <input type="text" class="form-control" id="numero" value="${cliente.enderecos[0].numero}" placeholder=""
                    name="numero">
                  <label for="numero" class="form-label">Número</label>
                </div>
              </div>

              <div class="col-md-9">
                <div class="form-floating">
                  <input type="text" class="form-control" id="bairro" value="${cliente.enderecos[0].bairro}" placeholder=""
                    name="bairro">
                  <label for="bairro" class="form-label">Bairro</label>
                </div>
              </div>
              <div class="col-md-3">
                <div class="form-floating">
                  <input type="text" class="form-control" id="cep" placeholder="00000-000" name="cep" placeholder=""
                    value="${cliente.enderecos[0].cep}">
                  <label for="cep" class="form-label">CEP</label>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-floating">
                  <label for="pais" class="form-label"></label>
                  <select class="form-select" id="pais" name="pais">
                    <option value="">Selecione</option>
                  </select>
                  <label>País</label>
                </div>
              </div>

              <div class="col-md-4">
                <div class="form-floating">
                  <select class="form-select" id="estado" name="estado" disabled>
                    <option value="">Selecione</option>
                    <option value="">São Paulo</option>
                  </select>
                  <label>Estado</label>
                </div>
              </div>

              <div class="col-md-4">
                <div class="form-floating">
                  <select class="form-select" id="cidade" name="cidade" disabled>
                    <option value="">Selecione</option>
                  </select>
                  <label>Cidade</label>
                </div>
              </div>
      
              <div class="col-md-12">
                <div class="form-floating">
                  <input type="text" class="form-control" id="observacao" value="${cliente.enderecos[0].observacoes}" placeholder="">
                  <label for="observacao" class="form-label">Observação<span
                      class="text-muted">(Opcional)</span></label>
                </div>
              </div>
            </div>
          </form>
          <hr>
          <div class="text-center"><a class="small" href="#">Esqueceu sua senha?</a></div>
          <div class="text-center"><a class="small" href="login.jsp">Entrar</a></div>
        </div>
        <button class="btn btn-primary float-end m-4" type="button" id="cadastrarBtn">Cadastrar</button>
      </div>
    </div>
  </div>
</body>

<script src='<c:url value="/webjars/jquery/3.6.0/jquery.min.js"/>'></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
<script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
<script src='assets/js/locaisUtils.js'></script>

<c:if test="${not empty requestScope.mensagem}">
  <script>
    $(window).on('load', function () {
      $('#erro').modal('show');
    });
  </script>
</c:if>

<script>
  $(document).ready(function () {
    $('#cpf').mask('000.000.000-00', { reverse: true });
    $('#cep').mask('00000-000');
    $('#phone').mask('00 00000-0000');
  });
</script>

</html>
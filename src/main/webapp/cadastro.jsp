<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page buffer="64kb" %>
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
                <button type="button" class="btn btn-primary"  data-bs-dismiss="modal">Continuar</button>
              </div>
            </div>
          </div>
        </div>
      </c:if>

      <div class="container-fluid position-absolute top-50 start-50 translate-middle">
        <div class="row justify-content-center">
          <div class="col-xl-12">
            <div class="card o-hidden border-0 shadow-lg my-5">
              <div class="card-body p-0">
                <div class="row">
                  <div class="col-lg-6 d-none d-lg-block bg-cadastro-image"></div>
                  <div class="col-lg-6">
                    <div class="p-5">
                      <main>
                        <form class="needs-validation" id="form-cadastro" action="/LootCommerce/cadastro" method="POST"
                          novalidate="">
                          <input type="hidden" name="operacao" value="salvar">
                          <img class="mb-4 text-center" src="/LootCommerce/assets/img/logo_fanloot.png" alt=""
                            max-height="100" width="100">
                          <h1 class="h3 mb-3 fw-normal text-center">Cadastrar</h1>

                          <!--Conta-->
                          <div class="tab row g-3 mb-3">
                            <h5 class="col-12 form-outline mb-4">
                              Conta
                            </h5>
                            <div class="col-12">
                              <div class="form-floating">
                                <input type="email" class="form-control" id="email" name="email" placeholder="" value="${cliente.usuario.email}">
                                <label for="email" class="form-label">Email</label>
                              </div>
                            </div>
                            <div class="col-6">
                              <div class="form-floating">
                                <input type="password" class="form-control" id="senha" name="senha" placeholder="" value="${cliente.usuario.senha}">
                                <label for="senha" class="form-label" >Senha</label>
                              </div>
                            </div>

                            <div class="col-6">
                              <div class="form-floating">
                                <input type="password" class="form-control" name="senhaConfirmacao" id="senhaConfirmacao" placeholder="" value="${cliente.usuario.confirmarSenha}">
                                <label for="senha-confirmacao" class="form-label">Insira novamente</label>
                              </div>
                            </div>
                          </div>

                          <!-- Dados pessoais -->
                          <div class="tab row g-3 mb-3">
                            <h5 class="col-12 form-outline mb-4">
                              Dados pessoais
                            </h5>
                            <div class="col-sm-5 form-outline">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="nome" name="nome" placeholder="" value="${cliente.nome}">
                                <label for="floatingPassword" class="form-label">Nome</label>
                              </div>
                            </div>
                            <div class="col-sm-7">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="sobrenome" name="sobrenome" placeholder="" value="${cliente.sobrenome}">
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
                                <input type="date" class="form-control" id="date" name="date" value="${cliente.dataNascimento}">
                                <label for="pais" class="form-label">Data de nascimento</label>
                                <div class="invalid-feedback">Selecione sua data de nascimento.</div>
                              </div>
                            </div>

                            <div class="col-3">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="cpf" placeholder="000.000.000-00" value="${cliente.cpf}"
                                  name="cpf">
                                <label for="cpf" class="form-label">CPF</label>
                                <div class="invalid-feedback">Insira seu número de CPF.</div>
                              </div>
                            </div>
                          </div>

                          <!-- Telefone -->
                          <div class="tab row g-6 mb-3">
                            <h5 class="col-12 form-outline mb-4">
                              Telefone
                            </h5>
                            <div class="col-6 form-outline">
                              <div class="form-floating">
                                <select class="form-select" id="tipoTelefone" name="tipoTelefone">
                                  <option value="">Selecione</option>
                                  <option>Residêncial</option>
                                  <option>Celular</option>>
                                </select>
                                <label for="phone" class="form-label">Tipo de Telefone</label>
                              </div>
                            </div>

                            <div class="col-5">
                              <div class="form-floating">
                                <input type="phone" class="form-control" id="phone" placeholder="" value="${cliente.telefone.ddd} ${cliente.telefone.numero}"
                                  name="phone">
                                <label for="phone" class="form-label">Número</label>
                                <div class="invalid-feedback">Insira um Telefone válido.</div>
                              </div>
                            </div>
                          </div>

                          <!--Endereço-->
                          <div class="tab row g-3 mb-3">
                            <h5 class="col-12 form-outline mb-4">
                              Endereço
                            </h5>
                            <div class="col-md-6">
                              <div class="form-floating">
                                <select class="form-select" id="tpResidencia" name="tpResidencia">
                                  <option value="">Selecione</option>
                                  <option>Casa</option>
                                  <option>Apartamento</option>
                                  <option>Outro</option>
                                </select>
                                <label>Tipo de residência</label>
                                <div class="invalid-feedback">Selecione um tipo de residência válido.</div>
                              </div>
                            </div>
                            <div class="col-md-6">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="tpLogradouro" value="${cliente.enderecos[0].tipoLogradouro}"
                                  name="tpLogradouro">
                                <label class="form-label">Tipo de logradouro</label>
                              </div>
                            </div>
                            <div class="col-md-5">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="logradouro" placeholder="" value="${cliente.enderecos[0].logradouro}"
                                  name="logradouro">
                                <label class="form-label">Logradouro</label>
                              </div>
                            </div>
                            <div class="col-md-3">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="numero" placeholder="" value="${cliente.enderecos[0].numero}"
                                  name="numero">
                                <label for="numero" class="form-label">Número</label>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="bairro" placeholder="" value="${cliente.enderecos[0].bairro}"
                                  name="bairro">
                                <label for="bairro" class="form-label">Bairro</label>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="cep" placeholder="00000-000" name="cep" value="${cliente.enderecos[0].cep}">
                                <label for="cep" class="form-label">CEP</label>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-floating">
                                <select class="form-select" id="cidade" name="cidade">
                                  <option value="">Selecione</option>
                                  <option>São Paulo</option>
                                </select>
                                <label>Cidade</label>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-floating">
                                <select class="form-select" id="estado" name="estado">
                                  <option value="">Selecione</option>
                                  <option>São Paulo</option>
                                </select>
                                <label>Estado</label>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-floating">
                                <label for="pais" class="form-label"></label>
                                <select class="form-select" id="pais" name="pais">
                                  <option value="">Selecione</option>
                                  <option>Brasil</option>
                                </select>
                                <label>País</label>
                              </div>
                            </div>
                            <div class="col-md-8">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="apelido" name="apelido" placeholder="" value="${cliente.enderecos[0].apelido}">
                                <label for="apelido" class="form-label">Apelido do endereço</label>
                              </div>
                            </div>
                            <div class="col-md-8">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="observacao" placeholder="" value="${cliente.enderecos[0].observacoes}">
                                <label for="observacao" class="form-label">Observação<span
                                    class="text-muted">(Opcional)</span></label>
                              </div>
                            </div>
                          </div>
                          <!-- Circles which indicates the steps of the form: -->
                          <div class="text-center">
                            <span class="step"></span>
                            <span class="step"></span>
                            <span class="step"></span>
                            <span class="step"></span>
                          </div>
                          <div style="overflow:auto;">
                            <div style="float:right;">
                              <button class="btn btn-primary" type="button" id="prevBtn" onclick="nextPrev(-1)">
                                <span class="material-icons">
                                  navigate_before
                                </span>
                              </button>
                              <button class="btn btn-primary" type="button" id="nextBtn" onclick="nextPrev(1)">
                                <span class="material-icons">
                                  navigate_next
                                </span>
                              </button>
                            </div>
                          </div>
                        </form>
                      </main>
                      <hr>
                      <div class="text-center"><a class="small" href="#">Esqueceu sua senha?</a></div>
                      <div class="text-center"><a class="small" href="login.jsp">Entrar</a></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </body>

    <script src='<c:url value="/webjars/jquery/3.6.0/jquery.min.js"/>'></script>
    <script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
    <script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
    <script src='<c:url value="/assets/js/form-steps.js"/>'></script>

    <c:if test="${not empty requestScope.mensagem}">
      <script>
        $(window).on('load', function() {
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
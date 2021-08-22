<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
  <meta charset="UTF-8" />
  <title>Cadastro</title>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
  <link rel="stylesheet" type="text/css" href='assets/css/style.css' />
</head>
<body class="bg-gradient-primary">
  <div class="container-fluid position-absolute top-50 start-50 translate-middle">
    <!-- Outer Row -->
    <div class="row justify-content-center">
      <div class="col-xl-10 col-lg-12 col-md-9">
        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-cadastro-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <main>
                    <form class="needs-validation text-center" id="form-cadastro" novalidate="">
                      <img class="mb-4" src="/Ecommerce/assets/img/logo_fanloot.png" alt="" max-height="100"
                        width="100">
                      <h1 class="h3 mb-3 fw-normal">Cadastrar</h1>

                      <!--Conta-->
                      <div class="tab row g-3 mb-3">
                        <div class="col-12">
                          <div class="form-floating">
                            <input type="email" class="form-control" id="email" placeholder="" value="" required="">
                            <label for="email" class="form-label">Email</label>
                            <div class="invalid-feedback">Insira um email válido.</div>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-floating">
                            <input type="senha" class="form-control" id="senha" placeholder="" value="" required="">
                            <label for="senha" class="form-label">Senha</label>
                            <div class="invalid-feedback">A senha deve possuir pelo menos 8 caracteres, ter letras
                              maiúsculas e minúsculas e conter caracteres especiais.</div>
                          </div>
                        </div>

                        <div class="col-6">
                          <div class="form-floating">
                            <input type="senha-confirmacao" class="form-control" id="senha-confirmacao" placeholder="" value="" required="">
                            <label for="senha-confirmacao" class="form-label">Insira novamente</label>
                            <div class="invalid-feedback">As senhas não são as mesmas.</div>
                          </div>
                        </div>
                      </div>

                      <!-- Dados pessoais -->
                      <div class="tab row g-3 mb-3">
                        <div class="col-sm-5 form-outline">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="nome" placeholder="" value="" required="">
                                <label for="floatingPassword" class="form-label">Nome</label>
                                <div class="invalid-feedback">Insira seu primeiro nome.</div>
                              </div>
                        </div>
                        <div class="col-sm-7">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="sobrenome" placeholder="" value=""
                                  required="">
                                <label for="sobrenome" class="form-label">Sobrenome</label>
                                <div class="invalid-feedback">Insira seu sobrenome.</div>
                              </div>
                        </div>

                        <div class="col-md-6">
                              <div class="form-floating">
                                <select class="form-select" id="genero" required="">
                                  <option value="">Selecione</option>
                                  <option>Masculino</option>
                                  <option>Feminimo</option>
                                  <option>Outro</option>
                                  <option>Prefiro não informar</option>
                                </select>
                                <label>Gênero</label>
                                <div class="invalid-feedback">Selecione um gênero.</div>
                              </div>
                        </div>

                        <div class="col-md-5">
                              <div class="form-floating">
                                <input type="date" class="form-control" id="date" value="" required="">
                                <label for="pais" class="form-label">Data de nascimento</label>
                                <div class="invalid-feedback">Selecione sua data de nascimento.</div>
                              </div>
                        </div>

                        <div class="col-4">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="cpf" placeholder="000.000.000-00" value=""
                                  required="">
                                <label for="cpf" class="form-label">CPF</label>
                                <div class="invalid-feedback">Insira seu número de CPF.</div>
                              </div>
                        </div>
                      </div>
                          
                      <!-- Telefone -->
                      <div class="tab row g-6 mb-3">
                        <div class="col-3 form-outline">
                              <div class="form-floating">
                                <select class="form-select" id="tipoTelefone" required="">
                                  <option value="">Selecione</option>
                                  <option>Residêncial</option>
                                  <option>Celular</option>>
                                </select>
                                <label for="phone" class="form-label">Tipo de Telefone</label>
                                <div class="invalid-feedback">Insira um tipo de telefone.</div>
                              </div>
                        </div>

                        <div class="col-5">
                              <div class="form-floating">
                                <input type="phone" class="form-control" id="phone" placeholder="" value="" required="">
                                <label for="phone" class="form-label">Telefone</label>
                                <div class="invalid-feedback">Insira um Telefone válido.</div>
                              </div>
                        </div>
                      </div>

                      <!--Endereço-->
                      <div class="tab row g-3 mb-3">
                        <div class="col-md-6">
                              <div class="form-floating">
                                <select class="form-select" id="tp-residencia" required="">
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
                                <input type="text" class="form-control" id="tp-logradouro" placeholder="" value=""
                                  required="">
                                <label for="tp-logradouro" class="form-label">Tipo de logradouro</label>
                                <div class="invalid-feedback">Insira um tipo de logradouro.</div>
                              </div>
                        </div>
                        <div class="col-md-5">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="logradouro" placeholder="" value=""
                                  required="">
                                <label for="logradouro" class="form-label">Logradouro</label>
                                <div class="invalid-feedback">Insira o logradouro.</div>
                              </div>
                        </div>
                        <div class="col-md-3">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="numero" placeholder="" value="" required="">
                                <label for="numero" class="form-label">Número</label>
                                <div class="invalid-feedback">Insira o número.</div>
                              </div>
                        </div>
                        <div class="col-md-4">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="bairro" placeholder="" value="" required="">
                                <label for="bairro" class="form-label">Bairro</label>
                                <div class="invalid-feedback">Insira um bairro.</div>
                              </div>
                        </div>
                        <div class="col-md-4">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="cep" placeholder="00000-000" required="">
                                <label for="cep" class="form-label">CEP</label>
                                <div class="invalid-feedback">Insira um cep válido.</div>
                              </div>
                        </div>
                        <div class="col-md-4">
                              <div class="form-floating">
                                <select class="form-select" id="cidade" required="">
                                  <option value="">Selecione</option>
                                  <option>São Paulo</option>
                                </select>
                                <label>Cidade</label>
                                <div class="invalid-feedback">Selecione uma cidade.</div>
                              </div>
                        </div>
                        <div class="col-md-4">
                              <div class="form-floating">
                                <select class="form-select" id="estado" required="">
                                  <option value="">Selecione</option>
                                  <option>São Paulo</option>
                                </select>
                                <label>Estado</label>
                                <div class="invalid-feedback">Selecione um estado.</div>
                              </div>
                        </div>
                        <div class="col-md-4">
                              <div class="form-floating">
                                <label for="pais" class="form-label"></label>
                                <select class="form-select" id="pais" required="">
                                  <option value="">Selecione</option>
                                  <option>Brasil</option>
                                </select>
                                <label>País</label>
                                <div class="invalid-feedback">Selecione um país.</div>
                              </div>
                        </div>
                        <div class="col-md-8">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="observacao" placeholder="">
                                <label for="observacao" class="form-label">Observação<span
                                    class="text-muted">(Opcional)</span></label>
                              </div>
                        </div>
                      </div>
                      <!-- Circles which indicates the steps of the form: -->
                      <div>
                        <span class="step"></span>
                        <span class="step"></span>
                        <span class="step"></span>
                        <span class="step"></span>                          
                      </div>
                      <div style="overflow:auto;">
                        <div style="float:right;">
                          <button class="btn btn-primary btn-lg" type="button" id="prevBtn"
                            onclick="nextPrev(-1)">Anterior</button>
                          <button class="btn btn-primary btn-lg" type="button" id="nextBtn"
                            onclick="nextPrev(1)">Próximo</button>
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

<script>
  $(document).ready(function () {
    $('#cpf').mask('000.000.000-00', { reverse: true });
    $('#cep').mask('00000-000');
    $('#phone').mask('00 00000-0000');
  });
</script>

</html>
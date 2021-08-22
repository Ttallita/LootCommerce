<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
  <meta charset="UTF-8"/>
  <title>Clientes</title>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>
  <link rel="stylesheet" type="text/css" href='../../assets/css/style.css'/>
</head>

<body>
  <!-- Navigation-->
  <c:import url="/includes/header-Administrador.jsp" charEncoding="UTF-8"/>
  <div class="container mt-3">
    <main>
      <div class="row g-5">
        <div class="col-md-5 col-lg-2 order-md-first">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-primary">Administrador</span>
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
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-people" viewBox="0 0 16 16"><path d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022zM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0zM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816zM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275zM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4z"/></svg>
                Clientes
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-arrow-left-right" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M1 11.5a.5.5 0 0 0 .5.5h11.793l-3.147 3.146a.5.5 0 0 0 .708.708l4-4a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708.708L13.293 11H1.5a.5.5 0 0 0-.5.5zm14-7a.5.5 0 0 1-.5.5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H14.5a.5.5 0 0 1 .5.5z"/></svg>
                Trocas
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-box-seam" viewBox="0 0 16 16"><path d="M8.186 1.113a.5.5 0 0 0-.372 0L1.846 3.5l2.404.961L10.404 2l-2.218-.887zm3.564 1.426L5.596 5 8 5.961 14.154 3.5l-2.404-.961zm3.25 1.7-6.5 2.6v7.922l6.5-2.6V4.24zM7.5 14.762V6.838L1 4.239v7.923l6.5 2.6zM7.443.184a1.5 1.5 0 0 1 1.114 0l7.129 2.852A.5.5 0 0 1 16 3.5v8.662a1 1 0 0 1-.629.928l-7.185 2.874a.5.5 0 0 1-.372 0L.63 13.09a1 1 0 0 1-.63-.928V3.5a.5.5 0 0 1 .314-.464L7.443.184z"/></svg>
                Estoque
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-graph-up" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M0 0h1v15h15v1H0V0zm10 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V4.9l-3.613 4.417a.5.5 0 0 1-.74.037L7.06 6.767l-3.656 5.027a.5.5 0 0 1-.808-.588l4-5.5a.5.5 0 0 1 .758-.06l2.609 2.61L13.445 4H10.5a.5.5 0 0 1-.5-.5z"/></svg>
                Vendas
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-7 col-lg-10 p-3">
          <div class="card mb-4 p-3">
          <h4 class="mb-3">Cliente</h4>
          <form class="needs-validation" novalidate="">
            <div class="row g-3">

              <div class="col-sm-6 form-outline">
                <div class="form-floating">
                  <input type="text" class="form-control" id="nome" placeholder="" value="" required="">
                  <label for="floatingPassword" class="form-label">Nome</label>
                  <div class="invalid-feedback">Insira seu primeiro nome.</div>
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-floating">
                  <input type="text" class="form-control" id="sobrenome" placeholder="" value="" required="">
                  <label for="sobrenome" class="form-label">Sobrenome</label>
                  <div class="invalid-feedback">Insira seu sobrenome.</div>
                </div>
              </div>

              <div class="col-md-3">
                <div class="form-floating">
                  <select class="form-select" id="genero" required="">
                    <option value="">Selecione</option>
                    <option>Masculino</option>
                    <option>Feminino</option>
                    <option>Outro</option>
                    <option>Prefiro não informar</option>
                  </select>
                  <label>Gênero</label>
                <div class="invalid-feedback">Selecione um país.</div>
                </div>
              </div>

            <div class="col-md-3">
              <div class="form-floating">
                <input type="date" class="form-control" id="date" value="" required="">
                <label for="pais" class="form-label">Data de nascimento</label>
                <div class="invalid-feedback">Selecione sua data de nascimento.</div>
              </div>
            </div>

            <div class="col-3">
              <div class="form-floating">
                <input type="text" class="form-control" id="cpf" placeholder="000.000.000-00" value="" required="">
                <label for="cpf" class="form-label">CPF</label>
                <div class="invalid-feedback">Insira seu número de CPF.</div>
              </div>
            </div>

            <div class="col-3">
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
               <div class="col-3">
                <div class="form-floating">
                  <input type="ddd" class="form-control" id="ddd" placeholder="" value="" required="">
                  <label for="ddd" class="form-label">DDD</label>
                  <div class="invalid-feedback">Insira um DDD válido.</div>
                </div>
              </div>
               <div class="col-3">
                <div class="form-floating">
                  <input type="phone" class="form-control" id="phone" placeholder="" value="" required="">
                  <label for="phone" class="form-label">Telefone</label>
                  <div class="invalid-feedback">Insira um Telefone válido.</div>
                </div>
              </div>
              <div class="col-6">
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
                  <div class="invalid-feedback">A senha deve possuir pelo menos 8 caracteres, ter letras maiúsculas e minúsculas e conter caracteres especiais.</div>
                </div>
              </div>

              <div class="col-6">
                <div class="form-floating">
                  <input type="senha-confirmacao" class="form-control" id="senha-confirmacao" placeholder="" value="" required="">
                  <label for="senha-confirmacao" class="form-label">Insira sua senha novamente</label>
                  <div class="invalid-feedback">As senhas não são as mesmas.</div>
                </div>
              </div>

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
                  <input type="text" class="form-control" id="tp-logradouro" placeholder="" value="" required="">
                  <label for="tp-logradouro" class="form-label">Tipo de logradouro</label>
                  <div class="invalid-feedback">Insira um tipo de logradouro.</div>
                </div>
              </div>

              <div class="col-md-3">
                <div class="form-floating">
                  <input type="text" class="form-control" id="logradouro" placeholder="" value="" required="">
                  <label for="logradouro" class="form-label">Logradouro</label>
                  <div class="invalid-feedback">Insira o logradouro.</div>
                </div>
              </div>

              <div class="col-md-2">
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

              <div class="col-md-3">
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

              <div class="col-md-12">
                <div class="form-floating">
                  <input type="text" class="form-control" id="observacao" placeholder="">
                  <label for="observacao" class="form-label">Observação<span class="text-muted">(Opcional)</span></label>
                </div>
              </div>

            </div>
            <hr class="my-4">
            <button class="w-100 btn btn-primary btn-lg" type="submit">Cadastrar</button>
          </form>
          </div>
        </div>
      </div>
    </main>
  </div>
  <c:import url="/includes/footer.jsp" charEncoding="UTF-8"/>
</body>
<script src='<c:url value="/webjars/jquery/3.6.0/jquery.min.js"/>'></script>
<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
<script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
<script>
    $(document).ready(function(){
        $('#cpf').mask('000.000.000-00', {reverse: true});
        $('#cep').mask('00000-000');
        $('#phone').mask('(00) 00 00000-0000');
    });
</script>
</html>
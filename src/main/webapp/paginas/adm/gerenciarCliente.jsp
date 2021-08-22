<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
  <meta charset="UTF-8"/>
  <title>Gerenciamento</title>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>'/>
  <link href="../../assets/css/style.css" rel="stylesheet" />
</head>

<body>
    <!-- Navigation-->
    <c:import url="/includes/header-Administrador.jsp" charEncoding="UTF-8"/>
	<div class="wrapper container mt-3">
		<main class="content">
			<div class="container-fluid p-0">
				<h1 class="h3 mb-3">Gerenciar Cliente</h1>
				<div class="row">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <button class="nav-link active" id="nav-dados-pessoais-tab" data-bs-toggle="tab" data-bs-target="#nav-dados-pessoais" type="button" role="tab" aria-controls="nav-dados-pessoais" aria-selected="true">Dados pessoais</button>
                            <button class="nav-link" id="nav-transacoes-tab" data-bs-toggle="tab" data-bs-target="#nav-transacoes" type="button" role="tab" aria-controls="nav-transacoes" aria-selected="false">Transações</button>
                            <button class="nav-link" id="nav-endereco-tab" data-bs-toggle="tab" data-bs-target="#nav-endereco" type="button" role="tab" aria-controls="nav-endereco" aria-selected="false">Endereços</button>
                            <button class="nav-link" id="nav-cartoes-tab" data-bs-toggle="tab" data-bs-target="#nav-cartoes" type="button" role="tab" aria-controls="nav-cartoes" aria-selected="false">Cartões</button>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-dados-pessoais" role="tabpanel" aria-labelledby="nav-dados-pessoais-tab">
                            <form class="needs-validation" novalidate="">
                                <div class="row g-6">
                                  <div class="col-sm-6 form-outline">
                                    <label for="nome" class="form-label">Nome
                                        <span class="material-icons">
                                            mode_edit
                                        </span>
                                    </label>
                                    <input type="text" class="form-control" id="nome" placeholder="" value="Tiger" required="" disabled>
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
                                    <input type="text" class="form-control" id="sobrenome" placeholder="" value="Nixon" required="" disabled>
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

                        <div class="tab-pane fade" id="nav-transacoes" role="tabpanel" aria-labelledby="nav-transacoes-tab">
                            <h4 class="mb-3">Histórico de Transações</h4>
                            <h5 class="mb-3">Tiger Nixon</h5>

                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Quant.</th>
                                        <th>Preço total</th>
                                        <th>Frete</th>
                                        <th>Data e hora</th>
                                        <th>Itens</th>
                                        <th>Data de envio</th>
                                        <th>Data de entrega</th>
                                        <th>Forma de pagamento</th>
                                        <th>Status de pagamento</th>
                                        <th>Status de envio</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>R$0,00</td>
                                    <td>R$0,00</td>
                                    <td>21-02-2012</td>
                                    <td>Action figure</td>
                                    <td>21-02-2012</td>
                                    <td>21-02-2012</td>
                                    <td>cartão de crédito</td>
                                    <td>confirmado</td>
                                    <td>entregue</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>R$0,00</td>
                                        <td>R$0,00</td>
                                        <td>21-02-2012</td>
                                        <td>Action figure</td>
                                        <td>21-02-2012</td>
                                        <td>21-02-2012</td>
                                        <td>cartão de crédito</td>
                                        <td>confirmado</td>
                                        <td>entregue</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>1</td>
                                        <td>R$0,00</td>
                                        <td>R$0,00</td>
                                        <td>21-02-2012</td>
                                        <td>Action figure</td>
                                        <td>21-02-2012</td>
                                        <td>21-02-2012</td>
                                        <td>cartão de crédito</td>
                                        <td>confirmado</td>
                                        <td>entregue</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="nav-endereco" role="tabpanel" aria-labelledby="nav-endereco-tab">
                            <h3 class="mb-2">Endereços cadastrados</h3>
                            <div class="d-grid gap-2">
                                <div class="d-grid gap-2">
                                    <a href="cadastrarEndereco.jsp" class="btn btn-primary" role="button">Novo Endereço</a>
                                </div>
                            </div>
                            <table class="table mt-2">
                              <thead>
                                <tr>
                                  <th scope="col">Logradouro</th>
                                  <th scope="col">Número</th>
                                  <th scope="col">Bairro</th>
                                  <th scope="col">CEP</th>
                                  <th scope="col">Cidade</th>
                                  <th scope="col">Estado</th>
                                  <th scope="col">Pais</th>
                                  <th scope="col">Tipo</th>
                                  <th scope="col">Alterar</th>
                                  <th scope="col">Excluir</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>Rua 25 de março</td>
                                  <td>123</td>
                                  <td>Castro Alves</td>
                                  <td>04513-205</td>
                                  <td>São Paulo</td>
                                  <td>São Paulo</td>
                                  <td>Brasil</td>
                                  <td>Cobrança</td>
                                  <td>
                                    <span class="material-icons">
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
                                  <td>Rua 25 de março</td>
                                  <td>123</td>
                                  <td>Castro Alves</td>
                                  <td>04513-205</td>
                                  <td>São Paulo</td>
                                  <td>São Paulo</td>
                                  <td>Brasil</td>
                                  <td>Entrega</td>
                                  <td>
                                    <span class="material-icons">
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
                                  <td>Rua 25 de março</td>
                                  <td>123</td>
                                  <td>Castro Alves</td>
                                  <td>04513-205</td>
                                  <td>São Paulo</td>
                                  <td>São Paulo</td>
                                  <td>Brasil</td>
                                  <td>Cobrança</td>
                                  <td>
                                    <span class="material-icons">
                                        mode_edit
                                    </span>
                                  </td>
                                  <td>
                                    <span class="material-icons text-danger">
                                        delete
                                    </span>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="nav-cartoes" role="tabpanel" aria-labelledby="nav-cartoes-tab">
                            <h3 class="mb-2">Cartões</h3>
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
                                    <span class="material-icons">
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
                                    <span class="material-icons text-danger">
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
                                    <span class="material-icons text-danger">
                                        delete
                                    </span>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                        </div>
                    </div>
				</div>
			</div>
		</main>
	</div>
</body>

<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>

</html>
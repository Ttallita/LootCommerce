<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
  <meta charset="UTF-8" />
  <title>Gerenciar clientes</title>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
  <link rel="stylesheet" type="text/css" href='/LootCommerce/assets/css/main.css' />
</head>

<body class="bg-default">

  <header class="header bg-dark shadow">
    <div class="d-flex flex-wrap align-items-center">
      <a type="button" id="voltarGerencia" href="/LootCommerce/admin/controle?operacao=listarTodos" class="p-4">
        <span class="material-icons">keyboard_backspace</span>
      </a>
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb m-0 h5">
          <li class="breadcrumb-item"><a href="/LootCommerce/admin/controle?operacao=listarTodos">Clientes</a></li>
          <li class="breadcrumb-item active" aria-current="page">Gerenciar Cliente</li>
        </ol>
      </nav>
    </div>
  </header>

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

  <main class="wrapper container mt-3">
    <div class="row mt-3 mb-3 bg-white rounded p-4">
      <div class="col-lg-10">
        <nav>
          <div class="nav nav-tabs" id="nav-tab" role="tablist">
            <button class="nav-link active" id="nav-dados-pessoais-tab" data-bs-toggle="tab" data-bs-target="#nav-dados-pessoais"
              type="button" role="tab" aria-controls="nav-dados-pessoais" aria-selected="true">
              Dados pessoais
            </button>
            <button class="nav-link" id="nav-transacoes-tab" data-bs-toggle="tab" data-bs-target="#nav-transacoes"
              type="button" role="tab" aria-controls="nav-transacoes" aria-selected="false">
              Transações
            </button>
            <button class="nav-link" id="nav-endereco-tab" data-bs-toggle="tab" data-bs-target="#nav-endereco"
              type="button" role="tab" aria-controls="nav-endereco" aria-selected="false">
              Endereços
            </button>
            <button class="nav-link" id="nav-cartoes-tab" data-bs-toggle="tab" data-bs-target="#nav-cartoes"
              type="button" role="tab" aria-controls="nav-cartoes" aria-selected="false">
              Cartões
            </button>
          </div>
        </nav>

        <div class="tab-content border border-top-0 p-4" id="nav-tabContent">
          <!--Dados Pessoais-->
          <div class="tab-pane fade active show" id="nav-dados-pessoais" role="tabpanel" aria-labelledby="nav-dados-pessoais-tab">
            <div class="card-body">
              <form class="needs-validation text-center" action="/LootCommerce/admin/cliente" method="POST">
                <input type="hidden" value="${cliente.id}" name="idCliente" />
                <input type="hidden" value="atualizar" name="operacao" />
                <div class="row g-3">
                  <div class="col-sm-6">
                    <div class="input-group form-floating">
                      <input type="text" class="form-control" name="nome" id="nome" value="${cliente.nome}">
                      <label class="form-label">Nome</label>
                    </div>
                  </div>

                  <div class="col-sm-6">
                    <div class="input-group form-floating">
                      <input type="text" class="form-control" name="sobrenome" id="sobrenome"
                        value="${cliente.sobrenome}">
                      <label class="form-label">Sobrenome</label>
                    </div>
                  </div>

                  <div class="col-md-4">
                    <div class="input-group form-floating">
                      <select class="form-select" name="genero" id="genero">
                        <option>${cliente.genero}</option>
                        <option>Masculino</option>
                        <option value="">Selecione</option>
                        <option>Feminimo</option>
                        <option>Outro</option>
                        <option>Prefiro não informar</option>
                      </select>
                      <label class="form-label">Gênero</label>
                    </div>
                  </div>

                  <div class="col-md-4">
                    <div class="input-group form-floating">
                      <input type="date" class="form-control" name="date" id="dataNasc"
                        value="${cliente.dataNascimento}">
                      <label class="form-label">Data de nascimento</label>
                    </div>
                  </div>

                  <div class="col-4">
                    <div class="input-group form-floating">
                      <input type="text" class="form-control" name="cpf" id="cpf" value="${cliente.cpf}">
                      <label class="form-label">CPF</label>
                    </div>
                  </div>

                  <div class="col-3">
                    <div class="input-group form-floating">
                      <select class="form-select" name="tipoTelefone" id="tipoTelefone">
                        <option>${cliente.telefone.tipo}</option>
                        <option value="">Selecione</option>
                        <option>Celular</option>
                        <option selected="">Residêncial</option>
                      </select>
                      <label class="form-label">Tipo de Telefone</label>
                    </div>
                  </div>

                  <div class="col-3">
                    <div class="input-group form-floating">
                      <input type="phone" class="form-control" name="phone" id="telefone"
                        value="${cliente.telefone.ddd} ${cliente.telefone.numero}">
                      <label class="form-label">Telefone</label>
                    </div>
                  </div>

                </div>
                <hr class="my-4">
                <input type="submit" class="btn btn-primary mt-auto btn-lg" value="Atualizar" />
              </form>
            </div>
          </div>

          <!--Transações-->
          <div class="tab-pane fade" id="nav-transacoes" role="tabpanel" aria-labelledby="nav-transacoes-tab">
            <table class="table table-hover table-sm table-responsive">
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

          <!-- Modal Cadastro/Edição Endereços-->
          <div class="modal fade" id="cadastrarEnderecoModal" data-bs-backdrop="static" data-bs-keyboard="false"
            tabindex="-1" aria-labelledby="cadastrarEnderecoLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-xl">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="cadastrarEnderecoLabel">Cadastrar</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                  <form class="needs-validation" action="/LootCommerce/admin/enderecos" method="POST" novalidate="">
                    <input type="hidden" name="operacao" value="salvar">
                    <input type="hidden" value="${cliente.id}" name="idCliente" />
                    <div class="row g-3 mb-3">
                      <div class="col-md-6">
                        <div class="form-floating">
                          <input type="text" class="form-control" value="" id="tpResidencia" name="tpResidencia" placeholder="" required>
                          <label for="tpResidencia" class="form-label">Tipo de residência</label>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-floating">
                          <input type="text" class="form-control" id="tpLogradouro" name="tpLogradouro" placeholder="" required>
                          <label for="tpLogradouro" class="form-label">Tipo de logradouro</label>
                        </div>
                      </div>
                      <div class="col-md-5">
                        <div class="form-floating">
                          <input type="text" class="form-control" id="logradouro" name="logradouro" placeholder="" required>
                          <label for="logradouro" class="form-label">Logradouro</label>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-floating">
                          <input type="text" class="form-control" id="numero" name="numero" placeholder="" required>
                          <label for="numero" class="form-label">Número</label>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-floating">
                          <input type="text" class="form-control" id="bairro" name="bairro" placeholder="" required>
                          <label for="bairro" class="form-label">Bairro</label>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-floating">
                          <input type="text" class="form-control" id="cep" name="cep" placeholder="" required>
                          <label for="cep" class="form-label">CEP</label>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-floating">
                          <select class="form-select" id="cidade" name="cidade" placeholder="" required>
                            <option value="">Selecione</option>
                            <option>São Paulo</option>
                          </select>
                          <label>Cidade</label>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-floating">
                          <select class="form-select" id="estado" name="estado" placeholder="" required>
                            <option value="">Selecione</option>
                            <option>São Paulo</option>
                          </select>
                          <label>Estado</label>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-floating">
                          <label for="pais" class="form-label"></label>
                          <select class="form-select" id="pais" name="pais" placeholder="" required>
                            <option value="">Selecione</option>
                            <option>Brasil</option>
                          </select>
                          <label>País</label>
                        </div>
                      </div>
                      <div class="col-md-8">
                        <div class="form-floating">
                          <input type="text" class="form-control" id="observacao" name="observacao">
                          <label for="observacao" class="form-label">Observação<span class="text-muted">(Opcional)</span></label>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-floating">
                          <select class="form-select" id="tpEndereco" name="tpEndereco" required>
                            <option value="">Selecione</option>
                            <option>Cobrança</option>
                            <option>Entrega</option>
                            <option>Cobrança/Entrega</option>
                          </select>
                          <label>Tipo de Endereço</label>
                        </div>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" id="cancelarEnderecoBtn" data-bs-dismiss="modal">Cancelar</button>
                      <button type="submit" class="btn btn-success" id="cadastrarEnderecoBtn">Cadastrar</button>
                    </div>
                  </form>

                </div>
              </div>
            </div>
          </div>

          <!-- Modal Exclusão Endereço -->
          <c:forEach var="endereco" items="${cliente.enderecos}">
            <div class="modal fade" id="excluirEnderecoModal${endereco.id}" data-bs-backdrop="static"
              data-bs-keyboard="false" tabindex="-1" aria-labelledby="excluirEnderecoLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered modal-sm">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="excluirEnderecoLabel">
                      Excluir</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    Tem certeza que deseja excluir esse endereço?
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    <form action="../admin/enderecos" method="POST">
                      <input type="hidden" value="remover" name="operacao" />
                      <input type="hidden" value="${endereco.id}" name="idEndereco" />
                      <input type="submit" class="btn btn-danger" value="Excluir" name="excluir" />
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </c:forEach>

          <div class="tab-pane fade" id="nav-endereco" role="tabpanel" aria-labelledby="nav-endereco-tab">
            <button type="button" id="novoEndereco" class="btn btn-primary mb-3 float-end" data-bs-toggle="modal"
              data-bs-target="#cadastrarEnderecoModal">
              <span class="material-icons inline-icon">add_circle_outline</span>Novo Endereço
            </button>
            <table class="table table-hover table-sm table-responsive" id="table-enderecos">
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
                  <th scope="col">Opções</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="endereco" items="${cliente.enderecos}">
                  <tr>
                    <td>${endereco.logradouro}</td>
                    <td>${endereco.numero}</td>
                    <td>${endereco.bairro}</td>
                    <td>${endereco.cep}</td>
                    <td>${endereco.cidade}</td>
                    <td>${endereco.estado}</td>
                    <td>${endereco.pais}</td>
                    <td>${endereco.tipoEndereco}</td>
                    <td>
                      <span class="material-icons" data-bs-toggle="modal" data-bs-target="#editarEndereco${endereco.id}"
                        id="deletarEndereco${endereco.id}">
                        mode_edit
                      </span>
                      <span class="material-icons text-danger">
                        <span data-bs-toggle="modal" data-bs-target="#excluirEnderecoModal${endereco.id}"
                          id="deletarEndereco${cliente.id}">
                          delete
                        </span>
                      </span>
                    </td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>

          <!-- Modal Cadastro Cartão -->
          <div class="modal fade" id="cadastrarCartao" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="cadastrarCartaoLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="cadastrarCartaoLabel">Cadastrar</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form class="needs-validation" action="/LootCommerce/admin/cartoes" method="POST" novalidate="">
                  <input type="hidden" name="operacao" value="salvar">
                  <input type="hidden" value="${cliente.id}" name="idCliente" />
                  <div class="modal-body">
                    <div class="row g-2">
                      <div class="col-md-9">
                          <div class="form-floating">
                              <input type="text" class="form-control" id="nomeCartao" name="nomeCartao" placeholder="" required>
                              <label for="nomeCartao">Nome impresso</label>
                          </div>
                      </div>
                      <div class="col-md-3">
                          <div class="form-floating">
                            <select class="form-select" id="bandeira" name="bandeira" required>
                              <option value="">Selecione</option>
                              <option>Visa</option>
                              <option>Mastercard</option>
                            </select>
                            <label>Bandeira</label>
                          </div>
                        </div>
                      <div class="col-md-8">
                          <div class="form-floating">
                              <input type="text" class="form-control" id="numCartao" name="numCartao" placeholder="" required>
                              <label for="numCartao" class="form-label">Número do cartão</label>
                          </div>
                      </div>
                      <div class="col-md-2">
                          <div class="form-floating">
                              <input class="form-control" id="dtValidade" name="dtValidade" placeholder="" required>
                              <label for="nomeCartao" class="form-label">Validade</label>
                          </div>
                      </div>
                      <div class="col-md-2">
                          <div class="form-floating">
                              <input type="text" class="form-control" id="codigoCartao" name="codigoCartao" placeholder="" required>
                              <label for="nomeCartao" class="form-label">CVV</label>
                          </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" id="cancelarCartaoBtn" data-bs-dismiss="modal" class="btn btn-secondary">
                      Cancelar
                    </button>
                    <input type="submit" id="cadastrarCartaoBtn" value="Cadastrar" class="btn btn-success">
                  </div>
                </form>
              </div>
            </div>
          </div>

          <c:forEach var="cartao" items="${cliente.cartoesDeCredito}">
            <!-- Modal Edição Cartão -->
            <div class="modal fade" id="editarCartaoModal${cartao.id}" data-bs-backdrop="static" data-bs-keyboard="false"
              tabindex="-1" aria-labelledby="editarCartaoLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered modal-xl">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="editarCartaoLabel">
                      Editar</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <form class="needs-validation" action="/LootCommerce/admin/cartoes" method="POST">
                      <input type="hidden" name="operacao" value="atualizar">
                      <div class="row g-3 mb-3">
                        <div class="col-md-6">
                          <div class="form-floating">
                            <input type="text" class="form-control" id="numCartao" name="numCartao"
                              value="${cartao.numCartao}">
                            <label for="numCartao" class="form-label">
                                Número do cartão
                            </label>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-floating">
                            <input type="text" class="form-control" id="nomeCartao" name="nomeCartao"
                              value="${cartao.nomeImpressoCartao}">
                            <label for="nomeCartao" required>
                                Nome do cartão
                            </label>
                          </div>
                        </div>
                        <div class="col-md-3">
                          <div class="form-floating">
                            <select class="form-select" id="bandeira" name="bandeira" required>
                              <option value="">Selecione</option>
                              <option>Visa</option>
                              <option>Mastercard</option>
                            </select>
                            <label>Bandeira</label>
                          </div>
                        </div>
                        <div class="col-md-2">
                          <div class="form-floating">
                            <input type="text" class="form-control" id="codigoCartao" name="codigoCartao"
                              value="${cartao.codigo}">
                            <label for="nomeCartao" class="form-label">Código</label>
                          </div>
                        </div>
                        <div class="col-md-3">
                          <div class="form-floating">
                            <input type="date" class="form-control" id="dtValidade" name="dtValidade"
                              value="${cartao.dataValidade}">
                            <label for="nomeCartao" class="form-label">
                                Data de Validade
                            </label>
                          </div>
                        </div>
                      </div>

                      <div class="modal-footer">
                        <button type="button" id="btnCancelarCartaoNovo" class="btn btn-secondary"
                          data-bs-dismiss="modal">Cancelar</button>
                        <input type="hidden" value="${cartao.id}" name="idCartao" />
                        <input type="submit" class="btn btn-primary" value="Editar" name="atualizar" />
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </c:forEach>

          <c:forEach var="cartao" items="${cliente.cartoesDeCredito}">
            <div class="modal fade" id="excluirCartaoModal${cartao.id}" data-bs-backdrop="static" data-bs-keyboard="false"
              tabindex="-1" aria-labelledby="excluirCartaoLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered modal-sm">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="excluirCartaoLabel">Excluir</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body"> Tem certeza que deseja excluir esse cartão? </div>
                  <div class="modal-footer">
                    <button type="button" data-bs-dismiss="modal" class="btn btn-secondary">Cancelar</button>
                    <form action="../admin/cartoes" method="POST">
                      <input type="hidden" value="remover" name="operacao" />
                      <input type="hidden" value="${cartao.id}" name="idCartao" />
                      <input type="submit" class="btn btn-danger" value="Excluir" name="excluir" />
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </c:forEach>

          <!--Cartões-->
          <div class="tab-pane fade" id="nav-cartoes" role="tabpanel" aria-labelledby="nav-cartoes-tab">
            <button type="button" id="novoCartao" class="btn btn-primary mb-3 float-end" data-bs-toggle="modal"
              data-bs-target="#cadastrarCartao">
              <span class="material-icons inline-icon">add_circle_outline</span>Novo cartão
            </button>
            <table class="table table-hover table-sm table-responsive" id="table-cartoes">
              <thead>
                <tr>
                  <th scope="col">Nome Impresso</th>
                  <th scope="col">Número</th>
                  <th scope="col">Bandeira</th>
                  <th scope="col">Código</th>
                  <th scope="col">Validade</th>
                  <th scope="col">Opções</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <c:forEach var="cartao" items="${cliente.cartoesDeCredito}">
                <tr>
                  <td>${cartao.nomeImpressoCartao}</td>
                  <td>${cartao.numCartao}</td>
                  <td>${cartao.bandeira}</td>
                  <td>${cartao.codigo}</td>
                  <td>${cartao.dataValidade}</td>
                  <td>
                    <span class="material-icons" data-bs-toggle="modal" data-bs-target="#editarCartao${cartao.id}">
                      mode_edit
                    </span>
                    <span class="material-icons text-danger">
                      <span data-bs-toggle="modal" data-bs-target="#excluirCartao${cartao.id}" id="deletarCartao${cartao.id}">
                        delete
                      </span>
                    </span>
                  </td>
                </tr>
                </c:forEach>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div class="col-lg-2">
        <div class="row vstack mt-5">
          <div class="container border rounded p-3">
            <div class="d-flex justify-content-between">
              <div class="text-primary text-uppercase">Rank:</div>
              <div class="h5">${cliente.ranking}</div>
            </div>
          </div>
          <div class="container border rounded mt-3 p-2">
            <div class="text-primary text-uppercase">Cupons</div>
            <div class="row row-cols-xl-1">
              <div>Promocional</div>
              <div class="col">
                <div class="border row p-2 rounded m-1">
                  <a id="excluirCupomBtn" type="button">
                    <span class="material-icons text-danger">close</span>
                  </a>
                  <h6>Nome cupom</h6>
                  <h6>R$ 00,00</h6>
                  <h6>Descrição</h6>
                </div>
              </div>
              <div class="col">
                <div class="border row p-2 rounded m-1">
                  <h6>Nome cupom</h6>
                  <h6>R$ 00,00</h6>
                  <h6>Descrição</h6>
                </div>
              </div>
            </div>
            <div class="row row-cols-xl-1">
              <div>Troca</div>
              <div class="col">
                <div class="border row p-2 rounded m-1">
                  <h6>Nome cupom</h6>
                  <h6>R$ 00,00</h6>
                  <h6>Descrição</h6>
                </div>
              </div>
              <div class="col">
                <div class="border row p-2 rounded m-1">
                  <h6>Nome cupom</h6>
                  <h6>R$ 00,00</h6>
                  <h6>Descrição</h6>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
</body>

<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
<script src='<c:url value="/webjars/jquery-mask-plugin/1.14.16/dist/jquery.mask.min.js"/>'></script>
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
    $('#dtValidade').mask('00/0000');
  });
</script>

</html>
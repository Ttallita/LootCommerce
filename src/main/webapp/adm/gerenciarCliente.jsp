<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
  <meta charset="UTF-8" />
  <title>Gerenciamento</title>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>' />
  <link rel="stylesheet" type="text/css"
    href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>' />
  <link rel="stylesheet" type="text/css" href='/Ecommerce/assets/css/style.css' />
</head>

<body class="bg-default">
  <!-- Navigation-->
  <c:import url="/includes/header-Administrador.jsp" charEncoding="UTF-8" />
  <div class="container">
    <main>
      <div class="row g-5 mt-0">
        <div class="col-md-5 col-lg-3 order-md-last">
          <div class="row vstack">

            <div class="col-md-12 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-primary text-uppercase mb-1">
                        Rank</div>
                      <div class="h5 mb-0">5</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-12 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-primary text-uppercase mb-1"> Cupons</div>
                      <div class="h5 mb-0">ANIVERSÁRIO</div>
                      <p class="text-break">Cupom de R$90,00, aplicável a carrinhos de valor maior que R$200,00</p>
                      <hr>
                      <div class="h5 mb-0">PRESENTEIE</div>
                      <p class="text-break">Cupom de R$50,00, aplicável a carrinhos de valor maior que R$170,00</p>
                      <hr>
                      <button type="button" id="adicionarCupom" class="btn btn-primary mb-3 float-end">
                        <span class="material-icons">local_offer</span>Adicionar cupom
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>

        </div>
        <div class="col-md-7 col-lg-9">
          <div class="container-fluid p-0">
            <h1 class="h3 mb-3">Gerenciar Cliente</h1>
            <div class="row shadow">
              <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                  <button class="nav-link active" id="nav-dados-pessoais-tab" data-bs-toggle="tab"
                    data-bs-target="#nav-dados-pessoais" type="button" role="tab" aria-controls="nav-dados-pessoais"
                    aria-selected="true">Dados pessoais</button>
                  <button class="nav-link" id="nav-transacoes-tab" data-bs-toggle="tab" data-bs-target="#nav-transacoes"
                    type="button" role="tab" aria-controls="nav-transacoes" aria-selected="false">Transações</button>
                  <button class="nav-link" id="nav-endereco-tab" data-bs-toggle="tab" data-bs-target="#nav-endereco"
                    type="button" role="tab" aria-controls="nav-endereco" aria-selected="false">Endereços</button>
                  <button class="nav-link" id="nav-cartoes-tab" data-bs-toggle="tab" data-bs-target="#nav-cartoes"
                    type="button" role="tab" aria-controls="nav-cartoes" aria-selected="false">Cartões</button>
                </div>
              </nav>

              <div class="tab-content" id="nav-tabContent">
                <!--Dados Pessoais-->
                <div class="tab-pane fade active show" id="nav-dados-pessoais" role="tabpanel"
                  aria-labelledby="nav-dados-pessoais-tab">
                  <div class="card-body">
                    <form class="needs-validation text-center" novalidate="">
                      <div class="row g-3">
                        <div class="col-sm-6">
                          <div class="input-group form-floating">
                            <input type="text" class="form-control" id="nome" value="Tiger" required="" disabled="">
                            <button onclick="editar('nome')" id="editarNome" class="btn btn-primary" type="button"><span
                                class="material-icons">mode_edit</span></button>
                            <label class="form-label">Nome</label>
                            <div class="invalid-feedback">Campo obrigatório.</div>
                          </div>
                        </div>

                        <div class="col-sm-6">
                          <div class="input-group form-floating">
                            <input type="text" class="form-control" id="sobrenome" value="Nixon" required=""
                              disabled="">
                            <button onclick="editar('sobrenome')" id="editarSobrenome" class="btn btn-primary"
                              type="button"><span class="material-icons">mode_edit</span></button>
                            <label class="form-label">Sobrenome</label>
                            <div class="invalid-feedback">Campo obrigatório.</div>
                          </div>
                        </div>

                        <div class="col-md-4">
                          <div class="input-group form-floating">
                            <select class="form-select" id="genero" required="" disabled="">
                              <option>Masculino</option>
                              <option value="">Selecione</option>
                              <option>Feminimo</option>
                              <option>Outro</option>
                              <option>Prefiro não informar</option>
                            </select>
                            <button onclick="editar('genero')" id="editarGenero" class="btn btn-primary"
                              type="button"><span class="material-icons">mode_edit</span></button>
                            <label class="form-label">Gênero</label>
                            <div class="invalid-feedback">Campo obrigatório.</div>
                          </div>
                        </div>

                        <div class="col-md-4">
                          <div class="input-group form-floating">
                            <input type="date" class="form-control" id="dataNasc" value="1900-04-01" required=""
                              disabled="">
                            <button onclick="editar('dataNasc')" id="editarDataNasc" class="btn btn-primary"
                              type="button"><span class="material-icons">mode_edit</span></button>
                            <label class="form-label">Data de nascimento</label>
                            <div class="invalid-feedback">Campo obrigatório.</div>
                          </div>
                        </div>

                        <div class="col-4">
                          <div class="input-group form-floating">
                            <input type="text" class="form-control" id="cpf" value="123.456.789-10" required=""
                              disabled="">
                            <button onclick="editar('cpf')" class="btn btn-primary" id="editarCpf" type="button"><span
                                class="material-icons">mode_edit</span></button>
                            <label class="form-label">CPF</label>
                            <div class="invalid-feedback">Campo obrigatório.</div>
                          </div>
                        </div>

                        <div class="col-12">
                          <div class="input-group form-floating">
                            <input type="email" class="form-control" id="email" value="nome@email.com" required=""
                              disabled="">
                            <button onclick="editar('email')" class="btn btn-primary" id="editarEmail"
                              type="button"><span class="material-icons">mode_edit</span></button>
                            <label class="form-label">Email</label>
                            <div class="invalid-feedback">Campo obrigatório.</div>
                          </div>
                        </div>

                        <div class="col-3">
                          <div class="input-group form-floating">
                            <select class="form-select" id="tipoTelefone" required="" disabled="">
                              <option value="">Selecione</option>
                              <option>Celular</option>
                              <option selected>Residêncial</option>
                            </select>
                            <button onclick="editar('tipoTelefone')" id="editarTpTelefone" class="btn btn-primary"
                              type="button"><span class="material-icons">mode_edit</span></button>
                            <label class="form-label">Tipo de Telefone</label>
                            <div class="invalid-feedback">Campo obrigatório.</div>
                          </div>
                        </div>

                        <div class="col-3">
                          <div class="input-group form-floating">
                            <input type="phone" class="form-control" id="telefone" value="90000-0000" required=""
                              disabled="">
                            <button onclick="editar('telefone')" id="editarPhone" class="btn btn-primary"
                              type="button"><span class="material-icons">mode_edit</span></button>
                            <label class="form-label">Telefone</label>
                            <div class="invalid-feedback">Campo obrigatório.</div>
                          </div>
                        </div>

                        <div class="col-6">
                          <div class="input-group form-floating">
                            <input type="password" class="form-control" id="senha" value="123456" required=""
                              disabled="">
                            <button onclick="editar('senha')" class="btn btn-primary" id="editarSenha"
                              type="button"><span class="material-icons">mode_edit</span></button>
                            <label class="form-label">Senha</label>
                            <div class="invalid-feedback">Campo obrigatório.</div>
                          </div>
                        </div>

                      </div>
                      <hr class="my-4">
                      <button class="btn btn-primary mt-auto btn-lg" type="submit" disabled="">
                        Atualizar
                      </button>
                    </form>
                  </div>
                </div>

                <!--Transações-->
                <div class="tab-pane fade" id="nav-transacoes" role="tabpanel" aria-labelledby="nav-transacoes-tab">
                  <h4 class="mb-3">Histórico de Transações</h4>
                  <h5 class="mb-3">Tiger Nixon</h5>

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
                <div class="modal fade" id="cadastrarEndereco" data-bs-backdrop="static" data-bs-keyboard="false"
                  tabindex="-1" aria-labelledby="cadastrarEnderecoLabel" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered modal-xl">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="cadastrarEnderecoLabel">Cadastrar</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <form class="needs-validation" novalidate>
                          <div class="row g-3 mb-3">
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
                                  required>
                                <label for="tp-logradouro" class="form-label">Tipo de logradouro</label>
                                <div class="invalid-feedback">Insira um tipo de logradouro.</div>
                              </div>
                            </div>
                            <div class="col-md-5">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="logradouro" placeholder="" value=""
                                  required>
                                <label for="logradouro" class="form-label">Logradouro</label>
                                <div class="invalid-feedback">Insira o logradouro.</div>
                              </div>
                            </div>
                            <div class="col-md-3">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="numero" placeholder="" value="" required>
                                <label for="numero" class="form-label">Número</label>
                                <div class="invalid-feedback">Insira o número.</div>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="bairro" placeholder="" value="" required>
                                <label for="bairro" class="form-label">Bairro</label>
                                <div class="invalid-feedback">Insira um bairro.</div>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="cep" placeholder="00000-000" required>
                                <label for="cep" class="form-label">CEP</label>
                                <div class="invalid-feedback">Insira um cep válido.</div>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-floating">
                                <select class="form-select" id="cidade" required>
                                  <option value="">Selecione</option>
                                  <option>São Paulo</option>
                                </select>
                                <label>Cidade</label>
                                <div class="invalid-feedback">Selecione uma cidade.</div>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-floating">
                                <select class="form-select" id="estado" required>
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
                                <select class="form-select" id="pais" required>
                                  <option value="">Selecione</option>
                                  <option>Brasil</option>
                                </select>
                                <label>País</label>
                                <div class="invalid-feedback">Selecione um país.</div>
                              </div>
                            </div>
                            <div class="col-md-8">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="observacao" placeholder>
                                <label for="observacao" class="form-label">Observação<span
                                    class="text-muted">(Opcional)</span></label>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-floating">
                                <select class="form-select" id="tpEndereco" required>
                                  <option value="">Selecione</option>
                                  <option>Cobrança</option>
                                  <option>Entrega</option>
                                  <option>Cobrança/Entrega</option>
                                </select>
                                <label>Tipo de Endereço</label>
                                <div class="invalid-feedback">Selecione um tipo de endereço.</div>
                              </div>
                            </div>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" id="btnCancelarEnderco" data-bs-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-success" id="btnCadastrarEndereco">Cadastrar</button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Modal Exclusão Endereço -->
                <div class="modal fade" id="excluirEndereco" data-bs-backdrop="static" data-bs-keyboard="false"
                  tabindex="-1" aria-labelledby="excluirEnderecoLabel" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered modal-sm">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="excluirEnderecoLabel">Excluir</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        Tem certeza que deseja excluir esse endereço?
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary">Cancelar</button>
                        <button type="button" id="btnInativar" data-bs-dismiss="modal"
                          class="btn btn-danger">Excluir</button>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="tab-pane fade" id="nav-endereco" role="tabpanel" aria-labelledby="nav-endereco-tab">
                  <h3 class="mb-2">Endereços cadastrados</h3>
                  <button type="button" id="novoEndereco" class="btn btn-primary mb-3 float-end" data-bs-toggle="modal"
                    data-bs-target="#cadastrarEndereco">
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
                            <span data-bs-toggle="modal" data-bs-target="#excluirEndereco"
                              id="deletarEndereco">delete</span>
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

                <!-- Modal Cadastro/Edição Cartão -->
                <div class="modal fade" id="cadastrarCartao" data-bs-backdrop="static" data-bs-keyboard="false"
                  tabindex="-1" aria-labelledby="cadastrarCartaoLabel" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered modal-xl">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="cadastrarCartaoLabel">Cadastrar</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                      <form class="needs-validation" novalidate>
                        <div class="row g-3 mb-3">
                          <div class="col-md-6">
                            <div class="form-floating">
                              <input type="text" class="form-control" id="numCartao" placeholder="" value=""
                                required>
                              <label for="numCartao" class="form-label">Número do cartão</label>
                              <div class="invalid-feedback">Insira um número para o cartão.</div>
                            </div>
                          </div>
                          <div class="col-md-6">
                            <div class="form-floating">
                              <input type="text" class="form-control" id="nomeCartao" placeholder="" value=""
                                required="">
                              <label for="nomeCartao" required>Nome do cartão</label>
                              <div class="invalid-feedback">Insira um nome para o cartão.</div>
                            </div>
                          </div>
                          <div class="col-md-3">
                            <div class="form-floating">
                              <select class="form-select" id="bandeira" required>
                                <option value="">Selecione</option>
                                <option>Visa</option>
                                <option>Mastercard</option>
                              </select>
                              <label>Bandeira</label>
                              <div class="invalid-feedback">Selecione a bandeira do cartão.</div>
                            </div>
                          </div>
                          <div class="col-md-2">
                            <div class="form-floating">
                              <input type="text" class="form-control" id="codigoCartao" placeholder="" value=""
                                required>
                              <label for="nomeCartao" class="form-label">Código</label>
                              <div class="invalid-feedback">Insira o código.</div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" id="btnCancelarCartao" data-bs-dismiss="modal"  class="btn btn-secondary">Cancelar</button>
                        <input type="submit" id="btnCadastrarCartao" value="Cadastrar" class="btn btn-success"/>
                      </div>
                      </form>

                    </div>
                  </div>
                </div>

                <!-- Modal Excluir Cartão -->
                <div class="modal fade" id="excluirCartao" data-bs-backdrop="static" data-bs-keyboard="false"
                  tabindex="-1" aria-labelledby="excluirCartaoLabel" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered modal-sm">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="excluirCartaoLabel">Excluir</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        Tem certeza que deseja excluir esse cartão?
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary">Cancelar</button>
                        <button type="button" id="btnInativar" data-bs-dismiss="modal"
                          class="btn btn-danger">Excluir</button>
                      </div>
                    </div>
                  </div>
                </div>

                <!--Cartões-->
                <div class="tab-pane fade" id="nav-cartoes" role="tabpanel" aria-labelledby="nav-cartoes-tab">
                  <h3 class="mb-2">Cartões</h3>
                  <button type="button" id="novoCartao" class="btn btn-primary mb-3 float-end" data-bs-toggle="modal"
                    data-bs-target="#cadastrarCartao">
                    <span class="material-icons inline-icon">add_circle_outline</span>Novo Cartão
                  </button>
                  <table class="table table-hover table-sm table-responsive" id="table-cartoes">
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
                          <span class="material-icons">mode_edit</span>
                        </td>
                        <td>
                          <span class="material-icons text-danger">
                            <span data-bs-toggle="modal" data-bs-target="#excluirCartao"
                              id="deletarCartao">delete</span>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td>TALLITA SOUZA</td>
                        <td>123131231412412</td>
                        <td>VISA</td>
                        <td>233</td>
                        <td>
                          <span class="material-icons">mode_edit</span>
                        </td>
                        <td>
                          <span class="material-icons text-danger">delete</span>
                        </td>
                      </tr>
                      <tr>
                        <td>RUAN CAMPOS</td>
                        <td>123131231412412</td>
                        <td>VISA</td>
                        <td>233</td>
                        <td>
                          <span class="material-icons">mode_edit</span>
                        </td>
                        <td>
                          <span class="material-icons text-danger">delete</span>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  </div>
</body>

<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>
<script src='<c:url value="/assets/js/form-validation.js"/>'></script>
<script src='<c:url value="/assets/js/disable-enable-form.js"/>'></script>

</html>
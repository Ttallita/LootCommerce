<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="modal fade" id="alterarEnderecoModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="alterarEnderecoLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" style="max-width:600px">
        <div class="modal-content">
            <div class="modal-header border-0">
                <h5 class="modal-title" id="alterarEnderecoLabel">Alterar endereço de entrega</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form class="needs-validation" action="..." method="POST" novalidate="">
                <input type="hidden" name="operacao" value="salvar">
                <div class="modal-body">
                    <div class="row g-2 mb-4">
                        <h6 class="col-md-12 fw-bold">Endereços salvos</h6>
                        <div class="border p-2 rounded">
                            <div class="col-md-12 d-flex justify-content-between">
                                <div class="form-check">
                                    <input class="form-check-input" id="flexRadioDefault1" type="radio"
                                        name="flexRadioDefault">
                                    <label class="form-check-label fw-bold">Nome endereço</label>
                                </div>
                                <span class="d-block">CEP: 00000-000</span><span>Logradouro, nº 000</span>
                            </div>
                        </div>
                        <div class="border p-2 rounded">
                            <div class="col-md-12 d-flex justify-content-between">
                                <div class="form-check">
                                    <input class="form-check-input" id="flexRadioDefault1" type="radio"
                                        name="flexRadioDefault">
                                    <label class="form-check-label fw-bold">Nome endereço</label>
                                </div>
                                <span class="d-block">CEP: 00000-000</span><span>Logradouro, nº 000</span>
                            </div>
                        </div>
                        <div class="border p-2 rounded">
                            <div class="col-md-12 d-flex justify-content-between">
                                <div class="form-check">
                                    <input class="form-check-input" id="flexRadioDefault1" type="radio"
                                        name="flexRadioDefault">
                                    <label class="form-check-label fw-bold">Nome endereço</label>
                                </div>
                                <span class="d-block">CEP: 00000-000</span><span>Logradouro, nº 000</span>
                            </div>
                        </div>
                    </div>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <button data-bs-toggle="tab" data-bs-target="#utilizarNovoEndereco" type="button" role="tab"
                            aria-selected="false" class="nav-link fw-bold" id="utilizarNovoEnderecoBtn">
                            <div class="form-check">
                                <input class="form-check-input" id="utilizarNovoEnderecoCheck" type="radio" name="utilizarNovoEnderecoCheck">
                                <label class="form-check-label fw-bold">
                                    Utilizar novo endereço
                                </label>
                            </div>
                        </button>
                    </div>
                    <div class="tab-content" id="nav-tabContent">
                        <div role="tabpanel" class="tab-pane fade" id="utilizarNovoEndereco">
                            <div class="row g-2">
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="tpLogradouro" name="tpLogradouro" placeholder="" required>
                                        <label for="tpLogradouro" class="form-label">Nome</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="tpResidencia" name="tpResidencia" placeholder="" required>
                                        <label>Tipo de residência</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="tpLogradouro" name="tpLogradouro" placeholder="" required>
                                        <label for="tpLogradouro" class="form-label">Tipo de logradouro</label>
                                    </div>
                                </div>
                                <div class="col-md-10">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="logradouro" name="logradouro" placeholder="" required>
                                        <label for="logradouro" class="form-label">Logradouro</label>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="numero" name="numero" placeholder="" required>
                                        <label for="numero" class="form-label">Número</label>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="bairro" name="bairro" placeholder="" required>
                                        <label for="bairro" class="form-label">Bairro</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="cep" name="cep" placeholder="" required>
                                        <label for="cep" class="form-label">CEP</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-floating">
                                        <select class="form-select" id="cidade" name="cidade" required>
                                            <option value="">Selecione</option>
                                            <option>São Paulo</option>
                                        </select>
                                        <label>Cidade</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-floating">
                                        <select class="form-select" id="estado" name="estado" required>
                                            <option value="">Selecione</option>
                                            <option>São Paulo</option>
                                        </select>
                                        <label>Estado</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-floating">
                                        <label for="pais" class="form-label"></label>
                                        <select class="form-select" id="pais" name="pais" required>
                                            <option value="">Selecione</option>
                                            <option>Brasil</option>
                                        </select>
                                        <label>País</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="observacao" name="observacao" placeholder="">
                                        <label for="observacao" class="form-label">
                                            Observação<span class="text-muted">(Opcional)</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer border-0">
                    <input type="submit" id="btnAlterarEndereco" class="btn btn-success" value="Atualizar">
                </div>
            </form>
        </div>
    </div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header class="p-3 bg-dark ">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/LootCommerce/">
                <img src="/LootCommerce/assets/img/logo_header.png" alt="fanLoot" name="fanLoot" max-height="100" width="130">
            </a>

            <div class="col-lg-6">
                <div class="input-group">
                  <input id="pesquisar" type="text" placeholder="Pesquisar..." class="form-control border-end-0">
                  <a class="btn input-group-text border border-start-0 bg-white" href="/LootCommerce/pesquisa.jsp">
                      <span class="material-icons">search</span>
                  </a>
                </div>
            </div>

            <div class="dropdown text-end">
                <a href="#" class="d-block text-decoration-none dropdown-toggle link-light" id="dropdownAdm" data-bs-toggle="dropdown" aria-expanded="false">
                    Administração
                </a>
                <ul class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
                    <li>
                        <a class="dropdown-item link-light" id="gerenciamento" href="/LootCommerce/admin/controle?operacao=listarTodos">
                            Gerenciamento
                        </a>
                    </li>
                    <li><hr class="dropdown-divider link-light"></li>
                    <li>
                        <form action="/LootCommerce/logout" class="m-0">
                            <input type="submit" class="dropdown-item link-light" value="Sair"/>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>
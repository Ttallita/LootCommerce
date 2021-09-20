<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header class="p-3 bg-dark ">
    <div class="container" >
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/LootCommerce/">
                <img src="/LootCommerce/assets/img/logo_header.png" alt="" max-height="100" width="130">
            </a>
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <!-- <li>
                        <a href="#" class="nav-link px-2 link-light dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                            Categorias
                        </a>
                        <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
                            <li><a class="dropdown-item" href="#">Anime</a></li>
                            <li><a class="dropdown-item" href="#">Marvel</a></li>
                        </ul>
                </li> -->
            </ul>
            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                <input type="search" class="form-control" placeholder="Pesquisa..." aria-label="Search">
            </form>
            <div class="dropdown text-end">
                <a href="#" class="d-block text-decoration-none dropdown-toggle link-light" id="dropdownAdm" data-bs-toggle="dropdown" aria-expanded="false">
                    Administração
                </a>
                <ul class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item link-light" id="gerenciamento" href="/LootCommerce/admin/controle?operacao=listarTodos">Gerenciamento</a></li>
                    <li><hr class="dropdown-divider link-light"></li>

                    <li>
                        <form action="/LootCommerce/logout">
                            <input type="submit" class="dropdown-item link-light" value="Sair"/>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>
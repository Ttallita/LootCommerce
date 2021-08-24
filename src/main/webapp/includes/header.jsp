<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header class="p-3 bg-dark ">
    <div class="container" >
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/Ecommerce/">
                <img src="/Ecommerce/assets/img/logo_header.png" alt="" max-height="100" width="130">
            </a>
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <!-- <li>
                        <a href="#" class="nav-link px-2 link-light dropdown-toggle" id="iconUsuario" data-bs-toggle="dropdown" aria-expanded="false">
                            Categorias
                        </a>
                        <ul class="dropdown-menu text-small" aria-labelledby="iconUsuario">
                            <li><a class="dropdown-item" href="#">Anime</a></li>
                            <li><a class="dropdown-item" href="#">Marvel</a></li>
                        </ul>
                </li> -->
            </ul>
            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                <input type="search" class="form-control" placeholder="Pesquisa..." aria-label="Search">
            </form>
            <div class="dropdown text-end">
                <a href="#" class="d-block text-decoration-none dropdown-toggle link-light" id="iconUsuario" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="https://i.pinimg.com/474x/bb/8a/71/bb8a71ef13231a77a85267fa9e066922.jpg" alt="mdo" class="rounded-circle" width="32" height="32">
                </a>
                <ul class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
                    <li><a id="perfil" class="dropdown-item link-light" href='/Ecommerce/cliente/perfil.jsp'>Perfil</a></li>
                    <li><a class="dropdown-item link-light" href='/Ecommerce/cliente/consultaEnderecos.jsp'>Endereços</a></li>
                    <li><a class="dropdown-item link-light" href='/Ecommerce/cliente/consultaCartao.jsp'>Cartões</a></li>
                    <li><hr class="dropdown-divider link-light"></li>
                    <li><a class="dropdown-item link-light" href="#">Sair</a></li>
                </ul>
            </div>
            <button type="button" class="btn btn-outline-light" style="margin-left: 10px;">
                <span class="material-icons inline-icon">
                    shopping_cart
                </span>
                Carrinho
            </button>
        </div>
    </div>
</header>
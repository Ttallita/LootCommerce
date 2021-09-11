<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header>
  <div class="bg-dark">

    <div class="navbar">
      <div class="container">
        <a href="index.html">
          <img src="/LootCommerce/assets/img/logo_header.png" max-height="100" alt="fanLoot" width="130">
        </a>

        <div class="col-lg-6">
          <div class="input-group">
            <input id="pesquisar"type="text" placeholder="Pesquisar..." aria-label="Username" aria-describedby="basic-addon1" class="form-control border-end-0">
            <span class="btn input-group-text border border-start-0 bg-white">
                <span class="material-icons">search</span>
            </span>
          </div>
        </div>
        <div class="d-flex align-items-center">
          <div>
              <a href="login.jsp" id="entrar" class="btn btn-outline-light ms-3">Entrar</a>
          </div>
          <div>
              <a href="cadastro.jsp" class="btn btn-outline-primary ms-3">Cadastre-se</a>
          </div>
        </div>
      </div>
    </div>

    <div class="navbar navbar-expand-lg navbar-dark">
      <div class="container">
        <div class="navbar-collapse">
          <ul class="navbar-nav">
            <li class="active"><a href="#" class="nav-link">Home</a>
            </li>
          </ul>
          <ul class="navbar-nav">
            <!--
            <li><a href="#" data-bs-toggle="dropdown" aria-expanded="false" class="nav-link dropdown-toggle pl-0"><i class=""></i>Categorias</a>
              <div class="dropdown-menu pt-3 pb-3 px-2 bg-dark">
                <div class="d-flex ">
                  <div class="px-3">
                    <div><a href="#" class="d-block mb-3 link-light text-decoration-none"><img src="img/shop/departments/01.jpg" alt="Categoria"></a>
                      <ul>
                        <li><a class="link-light nav-link" href="#">Subcategoria</a></li>
                        <li><a class="link-light nav-link" href="#">Subcategoria</a></li>
                        <li><a class="link-light nav-link" href="#">Subcategoria</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="px-3">
                    <div><a href="#" class="d-block mb-3 link-light text-decoration-none"><img src="img/shop/departments/02.jpg" alt="Categoria"></a>
                      <ul>
                        <li><a class="link-light nav-link" href="#">Subcategoria</a></li>
                        <li><a class="link-light nav-link" href="#">Subcategoria</a></li>
                        <li><a class="link-light nav-link" href="#">Subcategoria</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="px-3">
                    <div><a href="#" class="d-block mb-3 link-light text-decoration-none"><img src="img/shop/departments/03.jpg" alt="Categoria"></a>
                      <ul>
                        <li><a class="link-light nav-link" href="#">Subcategoria</a></li>
                        <li><a class="link-light nav-link" href="#">Subcategoria</a></li>
                        <li><a class="link-light nav-link" href="#">Subcategoria</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </li>
            -->
          </ul>
        </div>
      </div>
    </div>

  </div>
</header>
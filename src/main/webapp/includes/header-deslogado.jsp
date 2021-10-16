<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header>
  <div class="bg-dark">

    <div class="navbar">
      <div class="container">
        <a href="index.jsp">
          <img src="/LootCommerce/assets/img/logo_header.png" max-height="100" alt="fanLoot" name="fanLoot" width="130">
        </a>

        <div class="col-lg-6">
          <div class="input-group">
            <input id="pesquisar" type="text" placeholder="Pesquisar..." class="form-control border-end-0">
            <a class="btn input-group-text border border-start-0 bg-white" href="/LootCommerce/pesquisa.jsp">
                <span class="material-icons">search</span>
            </a>
          </div>
        </div>

        <div class="d-flex align-items-center">
          <div>
              <a href="login.jsp" id="entrar" class="btn btn-outline-light ms-3">Entrar</a>
          </div>
          <div>
              <a href="cadastro.jsp" id="cadastro" class="btn btn-outline-primary ms-3">Cadastre-se</a>
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
        </div>
      </div>
    </div>

  </div>
</header>
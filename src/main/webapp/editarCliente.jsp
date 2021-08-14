<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
  <meta charset="UTF-8"/>
  <title>Clientes</title>
  <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />

  <style>
    .card {
      padding: 30px 40px;
    }
  </style>
</head>

<body>
  <!-- Navigation-->
  <header class="p-3 mb-3 border-bottom bg-light ">
    <div class="container" >
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a class="navbar-brand" href="#!">fanLoot</a>
        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
            <li><a href="#" class="nav-link px-2 link-secondary">Overview</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">Inventory</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">Customers</a></li>
            <li><a href="#" class="nav-link px-2 link-dark dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                Categorias
                </a>
                <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
                    <li><a class="dropdown-item" href="#">Anime</a></li>
                    <li><a class="dropdown-item" href="#">Marvel</a></li>
                </ul>
            </li>
        </ul>
        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
          <input type="search" class="form-control" placeholder="Pesquisa..." aria-label="Search">
        </form>
        <div class="dropdown text-end">
          <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="https://i.pinimg.com/474x/bb/8a/71/bb8a71ef13231a77a85267fa9e066922.jpg" alt="mdo" class="rounded-circle" width="32" height="32">
          </a>
          <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
            <li><a class="dropdown-item" href="#">Perfil</a></li>
            <li><a class="dropdown-item" href="#">Compras</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Sair</a></li>
          </ul>
        </div>

        <button type="button" class="btn btn-outline-dark" style="margin-left: 10px;">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
              </svg>
            Carrinho
          </button>
        <div class="panel-body" style="margin-left: 10px;">
            <button class="btn btn-outline-dark btn-circle"><i class="bi bi-cart-fill"></i></button>
        </div>
        </div>
    </div>
  </header>

  <div class="container">
    <main>
      <div class="row g-5">
        <div class="col-md-5 col-lg-2 order-md-first">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-primary">Perfil</span>
          </h4>
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16"><path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/><path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/></svg>
                Conta
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="#">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16"><path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/></svg>
                Compras
              </a>
            </li>

          </ul>
        </div>
        <div class="col-md-7 col-lg-10">
          <div class="card mb-4">
          <h4 class="mb-3">Conta</h4>
          <form class="needs-validation" novalidate="">
            <div class="row g-6">

              <div class="col-12">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" placeholder="" value="" required="">
                <div class="invalid-feedback">
                  Insira um email válido.
                </div>
              </div>

              <div class="col-6">
                <label for="senha" class="form-label">Senha atual</label>
                <input type="senha" class="form-control" id="senha" placeholder="" value="" required="">
                <div class="invalid-feedback">
                  A senha deve possuir pelo menos 8 caracteres, ter letras maiúsculas e minúsculas e conter caracteres especiais.
                </div>
              </div>

              <div class="col-6">
                <label for="senha" class="form-label">Nova senha</label>
                <input type="senha" class="form-control" id="senha" placeholder="" value="" required="">
                <div class="invalid-feedback">
                  A senha deve possuir pelo menos 8 caracteres, ter letras maiúsculas e minúsculas e conter caracteres especiais.
                </div>
              </div>

              <div class="col-6">
                <label for="senha" class="form-label">Confirme a nova senha</label>
                <input type="senha" class="form-control" id="senha" placeholder="" value="" required="">
                <div class="invalid-feedback">
                  A senha deve possuir pelo menos 8 caracteres, ter letras maiúsculas e minúsculas e conter caracteres especiais.
                </div>
              </div>
            </div>
            <hr class="my-4">
            <button class="btn btn-outline-dark mt-auto btn-lg" type="submit">
              Alterar senha
            </button>
          </form>
          </div>
        </div>
      </div>
    </main>
  </div>

<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<script src="form-validation.js"></script>

</body>

<script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.min.js"/>'></script>


</html>
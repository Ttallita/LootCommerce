<header class="p-3 bg-dark ">
    <div class="container" >
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a class="navbar-brand link-light" href="#!">fanLoot</a>
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="#" class="nav-link px-2 link-light">Clientes</a></li>
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
                <a href="#" class="d-block text-decoration-none dropdown-toggle link-light" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="https://i.pinimg.com/474x/bb/8a/71/bb8a71ef13231a77a85267fa9e066922.jpg" alt="mdo" class="rounded-circle" width="32" height="32">
                </a>
                <ul class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item link-light" href="editarCliente-Administrador.jsp">Perfil</a></li>

                    <!-- mostra apenas quando usuario for Administrador -->
                    <li><a class="dropdown-item link-light" href="#">Gerenciamento</a></li>
                    <li><hr class="dropdown-divider link-light"></li>
                    <li><a class="dropdown-item link-light" href="#">Sair</a></li>
                </ul>
            </div>
            <button type="button" class="btn btn-outline-light" style="margin-left: 10px;">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
                    <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                </svg>
                Carrinho
            </button>
        </div>
    </div>
</header>
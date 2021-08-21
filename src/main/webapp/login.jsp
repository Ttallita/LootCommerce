<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/bootstrap/5.1.0/css/bootstrap.min.css"/>'/>
    <link rel="stylesheet" type="text/css" href='<c:url value="/webjars/material-design-icons/4.0.0/material-icons.css"/>'/>
    <link rel="stylesheet" type="text/css" href='assets/css/style.css'/>
</head>
<body class="bg-gradient-primary">
    <div class="container-fluid position-absolute top-50 start-50 translate-middle">
        <!-- Outer Row -->
        <div class="row justify-content-center">
            <div class="col-xl-10 col-lg-12 col-md-9">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <main>
                                      <form class="text-center">
                                        <img class="mb-4" src="/Ecommerce/assets/img/logo_fanloot.png" alt="" max-height="100" width="100">
                                        <h1 class="h3 mb-3 fw-normal">Login</h1>
                                        <div class="form-floating mb-2">
                                          <input type="email" class="form-control" id="email" placeholder="">
                                          <label for="floatingInput">Email</label>
                                          <div class="invalid-feedback">Insira um email válido.</div>
                                        </div>
                                        <div class="form-floating">
                                          <input type="password" class="form-control" id="senha" placeholder="">
                                          <label for="floatingPassword">Senha</label>
                                          <div class="invalid-feedback">Senha incorreta.</div>
                                        </div>
                                        <div class="checkbox mb-3">
                                          <label><input type="checkbox" value="remember-me">Lembrar de mim</label>
                                        </div>
                                        <button class="w-100 btn btn-lg btn-primary" id="logar" type="submit">Entrar</button>
                                      </form>
                                    </main>
                                    
                                    
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="#">Esqueceu sua senha?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="cadastro.jsp">Criar conta!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

    <!-- Bootstrap core JS-->
    <script src='<c:url value="/webjars/bootstrap/5.1.0/js/bootstrap.bundle.min.js"/>'></script>

</html>

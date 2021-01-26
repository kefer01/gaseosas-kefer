<%-- 
    Document   : index
    Created on : 13/11/2020, 03:49:29 PM
    Author     : Kevin Oliva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/estilosKefer01.css" rel="stylesheet" type="text/css"/>
        <title>Gaseosas de Guatemala</title>
    </head>
    <body class="estilosKefer">
        <header class="header">
            <div class="bg-danger">
                <div class="container">
                    <nav class="navbar navbar-expand-lg navbar-light">

                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav w-100 justify-content-center">
                                <a class="nav-link active" href="#">Inicio</a>
                                <a class="nav-item nav-link" href="Controlador?accion=listar">Usuarios</a>
                                <a class="nav-item nav-link" href="Controlador?accion=listadoEquipo">Equipos</a>
                                <a class="nav-item nav-link" href="Controlador?accion=AcercaDe">Acerca De</a>

                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <div class="text-header d-flex align-item-center">
            <div class="container"> 
                <div class="row">
                    <div class="col-sm-8">   
                        <br>
                        <h2> Gaseosas de Guatemala, S.A.</h2>
                        <p>
                            Bienvenido a la nueva plataforma de control de usuarios y equipos de Gaseosas de Guatemala S.A.
                        </p>
                        <a class="btn btn-success btn-lg" href="Controlador?accion=listar">Listar usuarios</a>
                        <a class="btn btn-success btn-lg" href="Controlador?accion=listadoEquipo">Listado de Equipos</a>
                        <a class="btn btn-success btn-lg" href="Controlador?accion=asignarEquipo">Asignacion de Equipo</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

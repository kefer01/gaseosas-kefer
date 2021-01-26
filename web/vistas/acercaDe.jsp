<%-- 
    Document   : agregar
    Created on : 13/11/2020, 03:25:00 PM
    Author     : Kevin Oliva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/estilosKefer01.css" rel="stylesheet" type="text/css"/>
        <title>Acerca De</title>
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
                                <a class="nav-link active" href="Controlador?accion=uno">Inicio</a>
                                <a class="nav-item nav-link" href="Controlador?accion=listar">Usuarios</a>
                                <a class="nav-item nav-link" href="Controlador?accion=listadoEquipo">Equipos</a>
                                <a class="nav-item nav-link" href="#">Acerca De</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <br>
        <h1 class="text-center">Acerca de esta aplicacion</h1>
        <p class="text-center">
            Esta aplicacion Web esta creada para el examen Final del curso de Programación II de la Universidad
            Mariano Galvez de Guatemala en la sede de Portales Vespertina.
        </p>
        <p class="text-center">
            Funciones disponibles en esta version de la aplicación.
        </p>
        <ul class="list-group">
            <li class="list-group-item bg-info text-center">*Conexión a Base de Datos -Postgresql- *</li>
            <li class="list-group-item bg-info text-center">*CRUD completo a los usuarios*</li>
            <li class="list-group-item bg-info text-center">*CRUD completo a los equipos*</li>
            <li class="list-group-item bg-info text-center">*Utilización de un modelo MVC*</li>
            <li class="list-group-item bg-info text-center">*Utilización de HTML y CSS*</li>
            <li class="list-group-item bg-info text-center">*Interfaz amigable*</li>
        </ul><br>
        <p class="text-center">
            <br>Guatemala, Noviembre 2020
            <br>Kevin Fernando Oliva Hernández
            <br>Carnet: 9960-19-2073
            <br>Correo: kolivah@miumg.edu.gt
        </p>

    </body>
</html>

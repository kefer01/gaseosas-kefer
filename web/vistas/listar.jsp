<%-- 
    Document   : listar
    Created on : 13/11/2020, 03:25:22 PM
    Author     : Kevin Oliva
--%>

<%@page import="java.util.Iterator"%>
<%@page import="ModeloDAO.empleadoDAO"%>
<%@page import="Modelo.empleado"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/estilosKefer01.css" rel="stylesheet" type="text/css"/>
        <title>Usuarios</title>
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
                                <a class="nav-item nav-link" href="#">Usuarios</a>
                                <a class="nav-item nav-link" href="Controlador?accion=listadoEquipo">Equipos</a>
                                <a class="nav-item nav-link" href="Controlador?accion=AcercaDe">Acerca De</a>

                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <div class="container">
            <h1>Listado de Usuarios</h1>
            <a class="btn btn-success" href="Controlador?accion=agregar">Agregar Nuevo Usuario</a>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">Id Empleado</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Apellido</th>
                        <th class="text-center">Puesto</th>
                        <th class="text-center">Departamento</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <%
                    empleadoDAO empDao = new empleadoDAO();
                    List<empleado>list = empDao.listar();
                    Iterator<empleado>iter=list.iterator();
                    empleado emplea=null;
                    while(iter.hasNext()){
                        emplea=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= emplea.getId() %></td>
                        <td class="text-center"><%= emplea.getNombre() %></td>
                        <td class="text-center"><%= emplea.getApellido() %></td>
                        <td class="text-center"><%= emplea.getPuesto() %></td>
                        <td class="text-center"><%= emplea.getDepto() %></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editar&id=<%= emplea.getId() %>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&id=<%= emplea.getId() %>">Eliminar</a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
                <a class="btn btn-outline-dark btn-lg btn-block" href="Controlador?accion=uno">Volver al Inicio</a><br>
        </div>
    </body>
</html>

<%-- 
    Document   : listar
    Created on : 13/11/2020, 03:25:22 PM
    Author     : Kevin Oliva
--%>

<%@page import="java.util.Iterator"%>
<%@page import="ModeloDAO.equipoDAO"%>
<%@page import="Modelo.equipo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/estilosKefer01.css" rel="stylesheet" type="text/css"/>
        <title>Listado de Equipos</title>
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
                                <a class="nav-item nav-link" href="#">Equipos</a>
                                <a class="nav-item nav-link" href="Controlador?accion=AcercaDe">Acerca De</a>

                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <div class="container">
            <h1>Listado de Equipos en Inventarios</h1>
            <a class="btn btn-success" href="Controlador?accion=agregarEquipo">Agregar Nuevo Equipo</a>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">Id Equipo</th>
                        <th class="text-center">Equipo</th>
                        <th class="text-center">Marca</th>
                        <th class="text-center">Estado</th>                        
                    </tr>
                </thead>
                <%
                    equipoDAO equiDao = new equipoDAO();
                    List<equipo>list = equiDao.listar();
                    Iterator<equipo>iter=list.iterator();
                    equipo equip=null;
                    while(iter.hasNext()){
                        equip=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= equip.getId() %></td>
                        <td class="text-center"><%= equip.getEquipo() %></td>
                        <td class="text-center"><%= equip.getMarca() %></td>
                        <td class="text-center"><%= equip.getEstado() %></td>                        
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editarEquipo&id=<%= equip.getId() %>">Editar Equipo</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminarEquipo&id=<%= equip.getId() %>">Eliminar Equipo</a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
                <a class="btn btn-outline-dark btn-lg btn-block" href="Controlador?accion=uno">Volver al Inicio</a><br>
        </div>
    </body>
</html>

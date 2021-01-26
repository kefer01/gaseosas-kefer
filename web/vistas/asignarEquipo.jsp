<%-- 
    Document   : listar
    Created on : 13/11/2020, 03:25:22 PM
    Author     : Kevin Oliva
--%>

<%@page import="Modelo.equipo"%>
<%@page import="ModeloDAO.equipoDAO"%>
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
        <title>Asignacion de Equipo</title>
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
                                <a class="nav-item nav-link" href="Controlador?accion=AcercaDe">Acerca De</a>

                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <div class="container">
            <div class="container">
                <div class="col-lg-6">
                    <h1>Asignar Equipo a Usuario</h1><br>
                    <p>
                        Para asignar un equipo a un usuario seleccione de la lista el usuario y luego seleccione el equipo que desea
                        asignar.
                    </p>
                    <form action="Controlador">  
                        <%
                            //select de empleado
                            empleadoDAO empDao = new empleadoDAO();
                            List<empleado> list = empDao.listado();
                            Iterator<empleado> iter = list.iterator();
                            empleado emplea = null;
                            
                            //select de equipo
                            equipoDAO equiDao = new equipoDAO();
                            List<equipo> lista = equiDao.listado();
                            Iterator<equipo> itera = lista.iterator();
                            equipo equi = null;
                        %>
                        Usuario:
                        <select class="btn-lg">
                            <%
                                while (iter.hasNext()) {
                                    emplea = iter.next();
                            %>
                            <option><%= emplea.getId() + ".) " + emplea.getNombre() + " " + emplea.getApellido()%></option>
                            <% }%>
                        </select><br><br>
                        Equipo:
                        <select class="btn-lg">
                            <%

                                while (itera.hasNext()) {
                                    equi = itera.next();

                            %>
                            <option><%= equi.getId() + ".) " + equi.getEquipo()+ " " + equi.getMarca()%></option>
                            <% }%>
                        </select><br>                        
                        <br><input class="btn btn-primary" type="submit" name="accion" value="Asignar"><br>

                    </form>
                </div>

            </div>
            <br><a class="btn btn-outline-dark btn-lg btn-block" href="Controlador?accion=uno">Volver al Inicio</a><br>
        </div>
    </body>
</html>

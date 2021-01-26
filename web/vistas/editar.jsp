<%-- 
    Document   : editar
    Created on : 13/11/2020, 03:25:10 PM
    Author     : Kevin Oliva
--%>

<%@page import="Modelo.empleado"%>
<%@page import="ModeloDAO.empleadoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/estilosKefer01.css" rel="stylesheet" type="text/css"/>
        <title>Editar Usuarios</title>
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
            <div class="col-lg-6">
                <%
                empleadoDAO dao = new empleadoDAO();
                int id=Integer.parseInt((String)request.getAttribute("idUser"));
                empleado p=(empleado)dao.list(id);
            %>
            <h1>Modificar Usuario</h1>
            <form action="Controlador">                
                Nombres: <br>
                <input class="form-control" type="text" name="txtNom" value="<%= p.getNombre()%>"><br>                
                Apellido: <br>
                <input class="form-control" type="text" name="txtApe" value="<%= p.getApellido()%>"><br>
                Puesto: <br>
                <input class="form-control" type="text" name="txtPue" value="<%= p.getPuesto()%>"><br>
                Departamento: <br>
                <input class="form-control" type="text" name="txtDept" value="<%= p.getDepto()%>"><br>
                <input type="hidden" name="txtId" value="<%= p.getId()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"><br>
                
            </form>
            </div>
            
        </div>
    </body>
</html>

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.empleado;
import Modelo.equipo;
import ModeloDAO.empleadoDAO;
import ModeloDAO.equipoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kevin Oliva
 */
public class Controlador extends HttpServlet {

    String listar = "vistas/listar.jsp";
    String agregar = "vistas/agregar.jsp";
    String editar = "vistas/editar.jsp";
    String agregarEquipo = "vistas/agregarEquipo.jsp";
    String listadoEquipo = "vistas/listadoEquipo.jsp";
    String editarEquipo = "vistas/editarEquipo.jsp";
    String uno = "index.jsp";
    String acercaDe = "vistas/acercaDe.jsp";
    String asignarEquipo = "vistas/asignarEquipo.jsp";
    String error = "vistas/error.jsp";
    empleado e = new empleado();
    equipo equi1 = new equipo();
    empleadoDAO dao = new empleadoDAO();
    equipoDAO equiDAO = new equipoDAO();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        int id;
        //listar usuario
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        }
        else if(action.equalsIgnoreCase("uno")){
           acceso = uno; 
        }
        else if(action.equalsIgnoreCase("Cancelar")){
           acceso = uno; 
        }
        else if(action.equalsIgnoreCase("asignarEquipo")){
           acceso = asignarEquipo; 
        }
        //listado de equipos
        else if (action.equalsIgnoreCase("listadoEquipo")) {
            acceso = listadoEquipo;
        } //agregar usuario
        else if (action.equalsIgnoreCase("agregar")) {
            acceso = agregar;
        } //insertar usuarios
        else if (action.equalsIgnoreCase("Insertar")) {
            String nom = request.getParameter("txtNom");
            String ape = request.getParameter("txtApe");
            String pue = request.getParameter("txtPue");
            String dep = request.getParameter("txtDept");
            e.setNombre(nom);
            e.setApellido(ape);
            e.setPuesto(pue);
            e.setDepto(dep);
            dao.agregar(e);
            acceso = listar;
        } //editar usuarios
        else if (action.equalsIgnoreCase("Editar")) {
            request.setAttribute("idUser", request.getParameter("id"));
            acceso = editar;
        } //actualizar usuarios
        else if (action.equalsIgnoreCase("Actualizar")) {
            id = Integer.parseInt(request.getParameter("txtId"));
            String nom = request.getParameter("txtNom");
            String ape = request.getParameter("txtApe");
            String pue = request.getParameter("txtPue");
            String dep = request.getParameter("txtDept");
            e.setId(id);
            e.setNombre(nom);
            e.setApellido(ape);
            e.setPuesto(pue);
            e.setDepto(dep);
            dao.editar(e);
            acceso = listar;
        } //eliminar usuarios
        else if (action.equalsIgnoreCase("eliminar")) {
            id = Integer.parseInt(request.getParameter("id"));
            e.setId(id);
            dao.eliminar(id);
            acceso = listar;
        } //insertar equipos
        else if (action.equalsIgnoreCase("Agregar Equipo")) {
            String equi = request.getParameter("txtEqui");
            String mar = request.getParameter("txtMar");
            String est = request.getParameter("txtEst");
            equi1.setEquipo(equi);
            equi1.setMarca(mar);
            equi1.setEstado(est);
            equiDAO.agregar(equi1);
            acceso = listadoEquipo;
        } //agregar equipos
        else if (action.equalsIgnoreCase("agregarEquipo")) {
            acceso = agregarEquipo;
        } //editar equipo
        else if (action.equalsIgnoreCase("editarEquipo")) {
            request.setAttribute("idUser", request.getParameter("id"));
            acceso = editarEquipo;
        } //actualizar usuarios
        else if (action.equalsIgnoreCase("Actualizar Equipo")) {
            id = Integer.parseInt(request.getParameter("txtId"));
            String equ = request.getParameter("txtEqu");
            String mar = request.getParameter("txtMar");
            String est = request.getParameter("txtEst");
            equi1.setId(id);
            equi1.setEquipo(equ);
            equi1.setMarca(mar);
            equi1.setEstado(est);
            equiDAO.editar(equi1);
            acceso = listadoEquipo;
        } //eliminar usuarios
        else if (action.equalsIgnoreCase("eliminarEquipo")) {
            id = Integer.parseInt(request.getParameter("id"));
            e.setId(id);
            equiDAO.eliminar(id);
            acceso = listadoEquipo;
        }
        //acerca de 
        else if (action.equalsIgnoreCase("AcercaDe")) {
            acceso = acercaDe;
        }
        else{
            acceso = error;
        }
        
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

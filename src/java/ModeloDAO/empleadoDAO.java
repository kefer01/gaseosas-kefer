
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.empleado;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Kevin Oliva
 */
public class empleadoDAO implements CRUD{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    empleado emple = new empleado();
    
    @Override
    public List listar() {
        ArrayList<empleado>list=new ArrayList();
        String sql="Select * from usuario";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                empleado emp = new empleado();
                emp.setId(rs.getInt("id_empleado"));
                emp.setNombre(rs.getString("nombre"));
                emp.setApellido(rs.getString("apellido"));
                emp.setPuesto(rs.getString("puesto"));
                emp.setDepto(rs.getString("depto"));
                list.add(emp);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public empleado list(int id) {
        String sql="Select * from usuario where id_empleado="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                emple.setId(rs.getInt("id_empleado"));
                emple.setNombre(rs.getString("nombre"));
                emple.setApellido(rs.getString("apellido"));
                emple.setPuesto(rs.getString("puesto"));
                emple.setDepto(rs.getString("depto"));
                
            }
        } catch (Exception e) {
        }
        return emple;
    }

    @Override
    public boolean agregar(empleado emp) {
        String sql="INSERT INTO usuario (nombre, apellido, puesto, depto) VALUES('"+emp.getNombre()+"','"+emp.getApellido()+"','"+emp.getPuesto()+"','"+emp.getDepto()+"');";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }     
        
        return false;
        
    }

    @Override
    public boolean editar(empleado emp) {
       String sql="UPDATE usuario SET nombre='"+emp.getNombre()+"', apellido='"+emp.getApellido()+"', puesto='"+emp.getPuesto()+"', depto='"+emp.getDepto()+"' Where id_empleado="+emp.getId();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false; 
    }

    @Override
    public boolean eliminar(int id) {
        String sql="DELETE from usuario where id_empleado="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
     public List listado() {
        ArrayList<empleado>list=new ArrayList();
        String sql="Select * from usuario";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                empleado emp = new empleado();
                emp.setId(rs.getInt("id_empleado"));
                emp.setNombre(rs.getString("nombre"));
                emp.setApellido(rs.getString("apellido"));
                emp.setPuesto(rs.getString("puesto"));
                emp.setDepto(rs.getString("depto"));
                list.add(emp);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
}

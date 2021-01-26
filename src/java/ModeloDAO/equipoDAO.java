
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD_Equipo;
import Modelo.equipo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Kevin Oliva
 */
public class equipoDAO implements CRUD_Equipo{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    equipo equi = new equipo();
    
    @Override
    public List listar() {
        ArrayList<equipo>list=new ArrayList();
        String sql="Select * from equipo";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                equipo equip = new equipo();
                equip.setId(rs.getInt("id_equipo"));
                equip.setEquipo(rs.getString("equipo"));
                equip.setMarca(rs.getString("marca"));
                equip.setEstado(rs.getString("estado"));                
                list.add(equip);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public equipo list(int id) {
        String sql="Select * from equipo where id_equipo="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                equi.setId(rs.getInt("id_equipo"));
                equi.setEquipo(rs.getString("equipo"));
                equi.setMarca(rs.getString("marca"));
                equi.setEstado(rs.getString("estado"));
   
            }
        } catch (Exception e) {
        }
        return equi;
    }

    @Override
    public boolean agregar(equipo eq) {
        String sql="INSERT INTO equipo (equipo, marca, estado) VALUES('"+eq.getEquipo()+"','"+eq.getMarca()+"','"+eq.getEstado()+"');";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }     
        
        return false;
        
    }

    @Override
    public boolean editar(equipo eq) {
       String sql="UPDATE equipo SET equipo='"+eq.getEquipo()+"', marca='"+eq.getMarca()+"', estado='"+eq.getEstado()+"' Where id_equipo="+eq.getId();
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
        String sql="DELETE from equipo where id_equipo="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    @Override
    public List listado() {
        ArrayList<equipo>list=new ArrayList();
        String sql="Select * from equipo";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                equipo equip = new equipo();
                equip.setId(rs.getInt("id_equipo"));
                equip.setEquipo(rs.getString("equipo"));
                equip.setMarca(rs.getString("marca"));
                equip.setEstado(rs.getString("estado"));                
                list.add(equip);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
}


package Interfaces;

import Modelo.empleado;
import java.util.List;

/**
 *
 * @author Kevin Oliva
 */
public interface CRUD {
    public List listar();
    public empleado list(int id);
    public boolean agregar(empleado emp);
    public boolean editar(empleado emp);
    public boolean eliminar(int id);
    public List listado();
    
}


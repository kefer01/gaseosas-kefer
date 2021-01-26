
package Interfaces;

import Modelo.equipo;
import java.util.List;

/**
 *
 * @author Kevin Oliva
 */
public interface CRUD_Equipo {
    public List listar();
    public equipo list(int id);
    public boolean agregar(equipo emp);
    public boolean editar(equipo emp);
    public boolean eliminar(int id);
    public List listado();
}



package Modelo;


public class equipo {
   int id;
   String equipo;
   String marca;
   String estado;

    public equipo() {
    }

    public equipo(int id, String equipo, String marca, String estado, String depto) {
        this.id = id;
        this.equipo = equipo;
        this.marca = marca;
        this.estado = estado;        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEquipo() {
        return equipo;
    }

    public void setEquipo(String equipo) {
        this.equipo = equipo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

}

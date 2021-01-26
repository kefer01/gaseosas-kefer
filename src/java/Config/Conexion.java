package Config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Kevin Oliva
 */
public class Conexion { //conexion a base de datos postgresql a un servidor.
    Connection con;
    public Conexion(){
        try{
            Class.forName("org.postgresql.Driver");
            con=DriverManager.getConnection("jdbc:postgresql://207.244.255.8:5432/gaseosas", "usuario_prueba", "1234");            
        } catch (Exception e){
            System.err.println("Error "+e);
        }
    }
public Connection getConnection(){
    return con;
}
}

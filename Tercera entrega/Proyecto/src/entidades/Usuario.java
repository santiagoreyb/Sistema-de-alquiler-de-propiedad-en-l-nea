
package entidades;

import java.math.BigDecimal;
/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class Usuario {
    public BigDecimal id;
    public String Usuario;
    public String Contrasena;
    
    public Usuario(){ 
    }
    
    public BigDecimal getId(){
        return id;
    }
    public  String getUsuario(){
        return Usuario;
    }
    public String getContrasena(){
        return Contrasena;
    }
    public void setId(BigDecimal id){
        this.id = id;
    }
    public void setUsuario(String Usuario){
        this.Usuario = Usuario;
    }
    public void setContrasena(String Contrasena){
        this.Contrasena = Contrasena;
    }
}

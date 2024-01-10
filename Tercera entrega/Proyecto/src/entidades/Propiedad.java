
package entidades;

import java.math.BigDecimal;
/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class Propiedad {
    public BigDecimal id;
    public BigDecimal idUsuario;
    public String Nombre;
    public int VEI; 

    public void setVEI(int VEI) {
        this.VEI = VEI;
    }

    public int getVEI() {
        return VEI;
    }
    
    public Propiedad(){ 
    }
    
    public BigDecimal getId(){
        return id;
    }
    public BigDecimal getIdUsuario(){
        return idUsuario;
    }
    public String getNombre(){
        return Nombre;
    }
    public void setId(BigDecimal id){
        this.id = id;
    }
    public void setIdUsuario(BigDecimal idUsuario){
        this.idUsuario = idUsuario;
    }
    public void setNombre(String Nombre){
        this.Nombre = Nombre;
    }
}

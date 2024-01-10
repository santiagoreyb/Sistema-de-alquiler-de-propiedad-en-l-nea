
package entidades;

import java.math.BigDecimal;
/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class Servicio {
    public BigDecimal id;
    public String Nombre;
    public int Precio;
    public int NumInquilinos;
    public Servicio(){ 
    }

    public BigDecimal getId() {
        return id;
    }

    public String getNombre() {
        return Nombre;
    }

    public int getPrecio() {
        return Precio;
    }

    public int getNumInquilinos() {
        return NumInquilinos;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public void setPrecio(int Precio) {
        this.Precio = Precio;
    }

    public void setNumInquilinos(int NumInquilinos) {
        this.NumInquilinos = NumInquilinos;
    }
    
}

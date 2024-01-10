
package entidades;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;
/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class Renta {
    public BigDecimal id;
    public BigDecimal idPropiedad;
    public LocalDate Fecha;
    public int Numtarjeta;
    public int costo;

    public void setNumtarjeta(int Numtarjeta) {
        this.Numtarjeta = Numtarjeta;
    }

    public void setCosto(int costo) {
        this.costo = costo;
    }

    public int getNumtarjeta() {
        return Numtarjeta;
    }

    public int getCosto() {
        return costo;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public void setIdPropiedad(BigDecimal idPropiedad) {
        this.idPropiedad = idPropiedad;
    }

    public void setFecha(LocalDate Fecha) {
        this.Fecha = Fecha;
    }

    public void setNumTarjetaCredito(int NumTarjetaCredito) {
        this.NumTarjetaCredito = NumTarjetaCredito;
    }

    public void setCostoTotal(int CostoTotal) {
        this.CostoTotal = CostoTotal;
    }

    public BigDecimal getId() {
        return id;
    }

    public BigDecimal getIdPropiedad() {
        return idPropiedad;
    }

    public LocalDate getFecha() {
        return Fecha;
    }

    public int getNumTarjetaCredito() {
        return NumTarjetaCredito;
    }

    public int getCostoTotal() {
        return CostoTotal;
    }
    public int NumTarjetaCredito; 
    public int CostoTotal;
    
}

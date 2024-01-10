
package entidades;

import java.math.BigDecimal;
/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class ServicioxRenta {
    public BigDecimal idServicio;
    public BigDecimal idRenta;


    public void setIdServicio(BigDecimal idServicio) {
        this.idServicio = idServicio;
    }

    public ServicioxRenta(BigDecimal idServicio, BigDecimal idRenta) {
        this.idServicio = idServicio;
        this.idRenta = idRenta;
    }

    public void setIdRenta(BigDecimal idRenta) {
        this.idRenta = idRenta;
    }

    public BigDecimal getIdServicio() {
        return idServicio;
    }

    public BigDecimal getIdRenta() {
        return idRenta;
    }

    public ServicioxRenta(){ 
    }
}

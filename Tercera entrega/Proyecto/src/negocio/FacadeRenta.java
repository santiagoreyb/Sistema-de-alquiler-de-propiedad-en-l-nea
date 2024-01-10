package negocio;

import accesoDatos.RepositorioPropiedad;
import accesoDatos.RepositorioRenta;
import entidades.Propiedad;
import entidades.Renta;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class FacadeRenta {

    public List<Renta> ConsultarRentasPorPropiedadyFecha(BigDecimal idPropiedad, LocalDate fecha) {
        RepositorioRenta repo = new RepositorioRenta();
        return repo.ConsultarRentasPorPropiedadyFecha(idPropiedad, fecha);
    }
 
}

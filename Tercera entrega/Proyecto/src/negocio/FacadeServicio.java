package negocio;

import accesoDatos.RepositorioPropiedad;
import accesoDatos.RepositorioServicio;
import entidades.Propiedad;
import entidades.Servicio;
import java.math.BigDecimal;
import java.util.List;
/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class FacadeServicio {

    public List<Servicio> ConsultarServicios() {
        RepositorioServicio repo = new RepositorioServicio();
        return repo.ConsultarServicios();
    }
    public Servicio ConsultarServicio(BigDecimal idServicio) {
        RepositorioServicio repo = new RepositorioServicio();
        return repo.ConsultarServicio(idServicio);
    }    
}

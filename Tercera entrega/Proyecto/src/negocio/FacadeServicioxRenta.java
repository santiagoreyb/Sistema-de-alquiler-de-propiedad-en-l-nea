package negocio;

import accesoDatos.RepositorioPropiedad;
import accesoDatos.RepositorioServicio;
import accesoDatos.RepositorioServicioxRenta;
import entidades.Servicio;
import entidades.ServicioxRenta;
import java.sql.SQLException;
import java.util.List;
/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class FacadeServicioxRenta {

    public Long InsertarServicio(ServicioxRenta SxR) throws SQLException {
        RepositorioServicioxRenta repo = new RepositorioServicioxRenta();
        return repo.InsertarServicio(SxR);
    }
       public List<ServicioxRenta> ConsultarServicios() {
        RepositorioServicioxRenta repo = new RepositorioServicioxRenta();
        return repo.ConsultarServicios();
    }
}
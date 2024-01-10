package negocio;

import accesoDatos.RepositorioPropiedad;
import entidades.Propiedad;
import java.math.BigDecimal;
import java.util.List;
/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class FacadePropiedad {

    public List<Propiedad> ConsultarPropiedadesxUsuario(BigDecimal idUsuario) {
        RepositorioPropiedad repo = new RepositorioPropiedad();
        return repo.ConsultarPropiedadesPorUsuario(idUsuario);
    }
    public Propiedad ConsultarPropiedad(BigDecimal idPropiedad) {
        RepositorioPropiedad repo = new RepositorioPropiedad();
        return repo.ConsultarPropiedad(idPropiedad);
    }    
}

package negocio;

import accesoDatos.RepositorioUsuarios;
import entidades.Usuario;
import java.util.List;
/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class FacadeUsuario {

    public Usuario ConsultarUsuario(String p_usuario, String p_contrasena) {
        RepositorioUsuarios repo = new RepositorioUsuarios();
        return repo.ConsultarUsuarios(p_usuario, p_contrasena);
    }
    
}

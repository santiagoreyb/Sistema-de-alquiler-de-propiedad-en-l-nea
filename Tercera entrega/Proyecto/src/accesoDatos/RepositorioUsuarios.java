/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package accesoDatos;

import entidades.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import negocio.constantes;

/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class RepositorioUsuarios {
    public Usuario ConsultarUsuarios(String p_usuario, String p_contrasena) {
        Usuario usuario = new Usuario();
        StringBuilder SQL = 
        new StringBuilder("select ID, NOMBRE, CONTRASENA ");
        SQL.append(" from USUARIO ");
        SQL.append(" WHERE NOMBRE like ? and CONTRASENA like ?");
        try (
                Connection conex = DriverManager.getConnection(constantes.THINCONN, constantes.USERNAME, constantes.PASSWORD);
                PreparedStatement ps = conex.prepareStatement(SQL.toString());) {
            //se asignan los valores a los parametros
            ps.setString(1, "%" + p_usuario + "%");
            ps.setString(2, "%" + p_contrasena+ "%");
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    usuario.setId(rs.getBigDecimal("ID"));
                    usuario.setUsuario(rs.getString("NOMBRE"));
                    usuario.setContrasena(rs.getString("CONTRASENA"));
                }
            }

        } catch (SQLException ex) {
            System.out.println("Error de conexion:" + ex.toString());
            ex.printStackTrace();
        }
        return usuario;
    }
    private void buildUsuario(final ResultSet rs, List<Usuario> usuarios)
            throws SQLException {
        Usuario usuario = new Usuario();
        usuario.setId(rs.getBigDecimal("ID"));
        usuario.setUsuario(rs.getString("NOMBRE"));
        usuario.setContrasena(rs.getString("CONTRASENA"));
        usuarios.add(usuario);
    }
}

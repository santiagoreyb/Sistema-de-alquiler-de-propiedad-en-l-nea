/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package accesoDatos;

import entidades.Propiedad;
import java.math.BigDecimal;
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
public class RepositorioPropiedad {
    public List<Propiedad> ConsultarPropiedadesPorUsuario(BigDecimal idUsuario) {
        List<Propiedad> propiedades = new ArrayList<>();
        StringBuilder SQL = 
        new StringBuilder("select ID, IDUSUARIO, NOMBRE, VEI ");
        SQL.append(" from PROPIEDAD ");
        SQL.append(" WHERE IDUSUARIO = ? ");
        try (
                Connection conex = DriverManager.getConnection(constantes.THINCONN, constantes.USERNAME, constantes.PASSWORD);
                PreparedStatement ps = conex.prepareStatement(SQL.toString());) {
            //se asignan los valores a los parametros
            ps.setBigDecimal(1, idUsuario);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    buildPropiedad(rs, propiedades);
                }
            }

        } catch (SQLException ex) {
            System.out.println("Error de conexion:" + ex.toString());
            ex.printStackTrace();
        }
        return propiedades;
    }
    private void buildPropiedad(final ResultSet rs, List<Propiedad> propiedades)
            throws SQLException {
        Propiedad propiedad = new Propiedad();
        propiedad.setId(rs.getBigDecimal("ID"));
        propiedad.setIdUsuario(rs.getBigDecimal("IDUSUARIO"));
        propiedad.setNombre(rs.getString("NOMBRE"));
        propiedad.setVEI(rs.getInt("VEI"));
        propiedades.add(propiedad);
    }
    public Propiedad ConsultarPropiedad(BigDecimal idPropiedad) {
        Propiedad propiedad = new Propiedad();
        StringBuilder SQL = 
        new StringBuilder("select ID, IDUSUARIO, NOMBRE, VEI ");
        SQL.append(" from PROPIEDAD ");
        SQL.append(" WHERE ID = ?");
        try (
                Connection conex = DriverManager.getConnection(constantes.THINCONN, constantes.USERNAME, constantes.PASSWORD);
                PreparedStatement ps = conex.prepareStatement(SQL.toString());) {
            //se asignan los valores a los parametros
            ps.setBigDecimal(1, idPropiedad);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    propiedad.setId(rs.getBigDecimal("ID"));
                    propiedad.setIdUsuario(rs.getBigDecimal("IDUSUARIO"));
                    propiedad.setNombre(rs.getString("NOMBRE"));
                    propiedad.setVEI(rs.getInt("VEI"));
                }
            }

        } catch (SQLException ex) {
            System.out.println("Error de conexion:" + ex.toString());
            ex.printStackTrace();
        }
        return propiedad;
    }
}

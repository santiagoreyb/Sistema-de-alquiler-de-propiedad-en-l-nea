/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package accesoDatos;

import entidades.Propiedad;
import entidades.Servicio;
import entidades.Usuario;
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
public class RepositorioServicio {
    public List<Servicio> ConsultarServicios() {
        List<Servicio> servicios = new ArrayList<>();
        StringBuilder SQL = 
        new StringBuilder("select ID, NOMBRE, PRECIO, NUMINQUILINOS ");
        SQL.append(" from SERVICIO ");
        try (
                Connection conex = DriverManager.getConnection(constantes.THINCONN, constantes.USERNAME, constantes.PASSWORD);
                PreparedStatement ps = conex.prepareStatement(SQL.toString());) {
            //se asignan los valores a los parametros
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    buildServicio(rs, servicios);
                }
            }

        } catch (SQLException ex) {
            System.out.println("Error de conexion:" + ex.toString());
            ex.printStackTrace();
        }
        return servicios;
    }
    private void buildServicio(final ResultSet rs, List<Servicio> servicios)
            throws SQLException {
        Servicio servicio = new Servicio();
        servicio.setId(rs.getBigDecimal("ID"));
        servicio.setNombre(rs.getString("NOMBRE"));
        servicio.setPrecio(rs.getInt("PRECIO"));
        servicio.setNumInquilinos(rs.getInt("NUMINQUILINOS"));
        servicios.add(servicio);
    }
    public Servicio ConsultarServicio(BigDecimal idServicio) {
        Servicio servicio = new Servicio();
        StringBuilder SQL = 
        new StringBuilder("select ID, NOMBRE, PRECIO, NUMINQUILINOS ");
        SQL.append(" from SERVICIO ");
        SQL.append(" WHERE ID = ?");
        try (
                Connection conex = DriverManager.getConnection(constantes.THINCONN, constantes.USERNAME, constantes.PASSWORD);
                PreparedStatement ps = conex.prepareStatement(SQL.toString());) {
            //se asignan los valores a los parametros
            ps.setBigDecimal(1, idServicio);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    servicio.setId(rs.getBigDecimal("ID"));
                    servicio.setNombre(rs.getString("NOMBRE"));
                    servicio.setPrecio(rs.getInt("PRECIO"));
                    servicio.setNumInquilinos(rs.getInt("NUMINQUILINOS"));
                }
            }

        } catch (SQLException ex) {
            System.out.println("Error de conexion:" + ex.toString());
            ex.printStackTrace();
        }
        return servicio;
    }
    public Servicio ConsultarServiciosSeleccionados(BigDecimal idServicio) {
        Servicio servicio = new Servicio();
        StringBuilder SQL = 
        new StringBuilder("select ID, NOMBRE, PRECIO, NUMINQUILINOS ");
        SQL.append(" from SERVICIO ");
        SQL.append(" WHERE ID = ?");
        try (
                Connection conex = DriverManager.getConnection(constantes.THINCONN, constantes.USERNAME, constantes.PASSWORD);
                PreparedStatement ps = conex.prepareStatement(SQL.toString());) {
            //se asignan los valores a los parametros
            ps.setBigDecimal(1, idServicio);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    servicio.setId(rs.getBigDecimal("ID"));
                    servicio.setNombre(rs.getString("NOMBRE"));
                    servicio.setPrecio(rs.getInt("PRECIO"));
                    servicio.setNumInquilinos(rs.getInt("NUMINQUILINOS"));
                }
            }

        } catch (SQLException ex) {
            System.out.println("Error de conexion:" + ex.toString());
            ex.printStackTrace();
        }
        return servicio;
    }
}
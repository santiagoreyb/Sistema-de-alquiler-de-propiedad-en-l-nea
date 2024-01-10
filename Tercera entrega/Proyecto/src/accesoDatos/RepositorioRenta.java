/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package accesoDatos;

import entidades.Propiedad;
import entidades.Renta;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.swing.JTextField;
import negocio.constantes;

/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class RepositorioRenta {
    public List<Renta> ConsultarRentasPorPropiedadyFecha(BigDecimal idPropiedad, LocalDate fecha) {
        List<Renta> rentas = new ArrayList<>();
        StringBuilder SQL = 
        new StringBuilder("select ID, IDPROPIEDAD, FECHA, NUMTARJETACREDITO, COSTOTOTAL ");
        SQL.append(" from RENTA ");
        SQL.append(" WHERE IDPROPIEDAD = ? and FECHA = ?");
        try (
                Connection conex = DriverManager.getConnection(constantes.THINCONN, constantes.USERNAME, constantes.PASSWORD);
                PreparedStatement ps = conex.prepareStatement(SQL.toString());) {
            //se asignan los valores a los parametros
            ps.setBigDecimal(1, idPropiedad);
            ps.setDate(2, java.sql.Date.valueOf(fecha));
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    buildRenta(rs, rentas);
                }
            }

        } catch (SQLException ex) {
            System.out.println("Error de conexion:" + ex.toString());
            ex.printStackTrace();
        }
        return rentas;
    } 
    private void buildRenta(final ResultSet rs, List<Renta> rentas)
            throws SQLException {
        Renta renta = new Renta();
        renta.setId(rs.getBigDecimal("ID"));
        renta.setIdPropiedad(rs.getBigDecimal("IDPROPIEDAD"));
        Date date = rs.getDate("FECHA");
        renta.setFecha(new java.sql.Date(date.getTime()).toLocalDate());
        renta.setNumtarjeta(rs.getInt("NUMTARJETACREDITO"));
        renta.setCosto(rs.getInt("COSTOTOTAL"));
        rentas.add(renta);
    }
}

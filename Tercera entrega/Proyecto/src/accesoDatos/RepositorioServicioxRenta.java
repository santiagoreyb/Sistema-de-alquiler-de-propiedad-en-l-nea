/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package accesoDatos;

import entidades.Servicio;
import entidades.ServicioxRenta;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import negocio.constantes;
import oracle.net.aso.m;
import oracle.net.aso.s;
/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class RepositorioServicioxRenta {
    public List<ServicioxRenta> ConsultarServicios() {
        List<ServicioxRenta> servicios = new ArrayList<>();
        StringBuilder SQL = 
        new StringBuilder("select IDSERVICIO, IDRENTA ");
        SQL.append(" from SERVICIOPORRENTA ");
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
    public Long InsertarServicio(ServicioxRenta SxR) throws SQLException {
        int afectadas = 0;
        Long primaryKey = null;
        String SQL = "insert into servicioporrenta (IDSERVICIO, IDRENTA) values(?,?)";
        try (
                Connection conex = DriverManager.getConnection(
                        constantes.THINCONN, 
                        constantes.USERNAME, 
                        constantes.PASSWORD);
                PreparedStatement ps = conex.prepareStatement(
                    SQL);) {

            ps.setBigDecimal(1, SxR.getIdServicio());
            ps.setBigDecimal(2, SxR.getIdRenta());
            afectadas = ps.executeUpdate();
            
            ResultSet generatedKeys = ps.getGeneratedKeys();
            if (null != generatedKeys && generatedKeys.next()) {
                primaryKey = generatedKeys.getLong(1);
            }
            
        } catch (SQLException ex) {
            System.out.println("Error de conexion:" + ex.toString());
            ex.printStackTrace();
        }
        return primaryKey;
    } 
        private void buildServicio(final ResultSet rs, List<ServicioxRenta> servicios)
            throws SQLException {
        ServicioxRenta servicio = new ServicioxRenta();
        servicio.setIdServicio(rs.getBigDecimal("IDSERVICIO"));
        servicio.setIdRenta(rs.getBigDecimal("IDRENTA"));
        servicios.add(servicio);
    }    
        
}

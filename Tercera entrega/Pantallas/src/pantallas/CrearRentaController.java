/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/javafx/FXMLController.java to edit this template
 */
package pantallas;

import entidades.Propiedad;
import entidades.Servicio;
import entidades.ServicioxRenta;
import entidades.Usuario;
import java.io.IOException;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;
import negocio.FacadePropiedad;
import negocio.FacadeServicio;
import negocio.FacadeServicioxRenta;
import negocio.FacadeUsuario;
/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class CrearRentaController implements Initializable {
    static Usuario usuario;
    Servicio servicio;
    static BigDecimal idP;
    static int vei;
    private FacadeServicio faca = new FacadeServicio();
    private FacadeServicioxRenta faca2 = new FacadeServicioxRenta();
    private FacadeUsuario faca3 = new FacadeUsuario();
    List<Servicio> servs;
    Stage stage = new Stage();


    @FXML
    private TableView<Servicio> TABLA;
    @FXML
    private TableColumn ID;
    @FXML
    private TableColumn NOMBRE;
    @FXML
    private TableColumn PRECIO;
    @FXML
    private TableView<Servicio> TABLA2;
    @FXML
    private TableColumn ID2;
    @FXML
    private TableColumn NOMBRE2;
    @FXML
    private TableColumn PRECIO2;
    @FXML
    private TextField TOTALRENTA;
    @FXML
    private TextField idservicioelegido;
    @FXML
    private TextField idtotalrenta;
    public void setStage(Stage stage) {
        this.stage = stage;
    };
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }
    @FXML
    void BotonSeleccionar(ActionEvent event)throws IOException, SQLException{
        String ids = idservicioelegido.getText();
        BigDecimal idb = new BigDecimal(ids.replaceAll(",", ""));
        System.out.println(idb);
        servicio = faca.ConsultarServicio(idb);
        System.out.println(servicio.getId());
        AgregarServicioElegido();
    }
    public void AgregarServicioElegido() throws SQLException{
        ServicioxRenta SxR = new ServicioxRenta(servicio.getId(), idP);
        faca2.InsertarServicio(SxR);
        ObservableList<Servicio> SER2;
        LlenarServs();
        SER2 = FXCollections.observableArrayList(servs);
        TABLA2.setItems(SER2);
        this.ID2.setCellValueFactory(new PropertyValueFactory("id"));
        this.NOMBRE2.setCellValueFactory(new PropertyValueFactory("Nombre"));
        this.PRECIO2.setCellValueFactory(new PropertyValueFactory("Precio"));
        TABLA2.refresh();
        ActualizarValorTotalRenta();
    }
    public void MostrarServicios(){
        ObservableList<Servicio> SER;
        List<Servicio> servicios = faca.ConsultarServicios();
        SER = FXCollections.observableArrayList(servicios);
        TABLA.setItems(SER);
        this.ID.setCellValueFactory(new PropertyValueFactory("id"));
        this.NOMBRE.setCellValueFactory(new PropertyValueFactory("Nombre"));
        this.PRECIO.setCellValueFactory(new PropertyValueFactory("Precio"));
        ActualizarValorTotalRenta();
    }

    public void setIdP(BigDecimal idP) {
        CrearRentaController.idP = idP;
    }
    public void ActualizarValorTotalRenta(){
        LlenarServs();
        int vei2 = 0;
        for(Servicio servis : servs)
            vei2 = vei2 + servis.getPrecio()*servis.getNumInquilinos();
        vei2 = vei2 + vei;
        String valor = String.valueOf(vei2);
        idtotalrenta.setText(valor);    
    }
    public void LlenarServs(){
        if (servs != null){
            servs.clear();
        }
        List<ServicioxRenta> servicios = faca2.ConsultarServicios();
        servs = new ArrayList<Servicio>();
        for(ServicioxRenta SR : servicios){
            servs.add(faca.ConsultarServicio(SR.getIdServicio()));
        }
    }

    public void setVei(int vei) {
        CrearRentaController.vei = vei;
    }
    @FXML
    void BotonLimpiar(ActionEvent event)throws IOException{
        TABLA2.getItems().clear();
        idtotalrenta.clear();
        idservicioelegido.clear();
    }
    @FXML
    void BotonVolver(ActionEvent event)throws IOException{
        FXMLLoader loader = new FXMLLoader(getClass().getResource("menu.fxml"));
        Scene scene = new Scene(loader.load(), 472, 302);
        MenuController controller = loader.getController();
        Stage nStage = new Stage();
        nStage.setTitle("Menu");
        nStage.setScene(scene);
        controller.setStage(nStage);
        nStage.show();
        this.stage.close();
        controller.MostrarPropiedades(usuario);
    }
    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        CrearRentaController.usuario = usuario;
    }
}

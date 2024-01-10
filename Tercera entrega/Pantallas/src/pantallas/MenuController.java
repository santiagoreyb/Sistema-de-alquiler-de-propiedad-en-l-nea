/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/javafx/FXMLController.java to edit this template
 */
package pantallas;

import entidades.Propiedad;
import entidades.Usuario;
import java.io.IOException;
import java.math.BigDecimal;
import java.net.URL;
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
import negocio.FacadeUsuario;

/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class MenuController implements Initializable {
    Propiedad propiedad;
    private Stage stage;
    private FacadePropiedad faca = new FacadePropiedad();
    @FXML
    private TableView<Propiedad> TABLA;
    @FXML
    private TableColumn ID;
    @FXML
    private TableColumn NOMBRE;
    @FXML
    private TextField idpropiedad;
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    

    public void setStage(Stage stage) {this.stage = stage;}
    
    public void MostrarPropiedades(Usuario usuario){
        ObservableList<Propiedad> PRO;
        List<Propiedad> propiedades = faca.ConsultarPropiedadesxUsuario(usuario.getId());
        PRO = FXCollections.observableArrayList(propiedades);
        TABLA.setItems(PRO);
        this.ID.setCellValueFactory(new PropertyValueFactory("id"));
        this.NOMBRE.setCellValueFactory(new PropertyValueFactory("nombre"));
    }
    @FXML
    void BotonSeleccionar(ActionEvent event)throws IOException{
        String ids = idpropiedad.getText();
        BigDecimal idb = new BigDecimal(ids.replaceAll(",", ""));
        System.out.println(idb);
        propiedad = faca.ConsultarPropiedad(idb);
        CrearRentaController CRC = new CrearRentaController();
        ListarRentaController LRC = new ListarRentaController();
        LRC.setIdP(idb);
        CRC.setIdP(idb);
        CRC.setVei(propiedad.getVEI());
    }
    @FXML
    void BotonCrear(ActionEvent event)throws IOException{
        FXMLLoader loader = new FXMLLoader(getClass().getResource("CrearRenta.fxml"));
        Scene scene = new Scene(loader.load(), 579, 393);
        CrearRentaController controller = loader.getController();
        Stage nStage = new Stage();
        nStage.setTitle("CrearRenta");
        nStage.setScene(scene);
        controller.setStage(nStage);
        nStage.show();
        this.stage.close();
        controller.MostrarServicios();
    }
    @FXML
    void BotonListar(ActionEvent event)throws IOException{
        FXMLLoader loader = new FXMLLoader(getClass().getResource("ListarRenta.fxml"));
        Scene scene = new Scene(loader.load(), 579, 393);
        ListarRentaController controller = loader.getController();
        Stage nStage = new Stage();
        nStage.setTitle("ListarRenta");
        nStage.setScene(scene);
        controller.setStage(nStage);
        nStage.show();
        this.stage.close();
    }
}

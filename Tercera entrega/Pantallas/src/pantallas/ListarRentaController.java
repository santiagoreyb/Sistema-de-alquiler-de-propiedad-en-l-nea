
package pantallas;

import entidades.Renta;
import entidades.Servicio;
import java.io.IOException;
import java.math.BigDecimal;
import java.net.URL;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.ResourceBundle;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;
import negocio.FacadeRenta;
import negocio.FacadeServicio;
import static pantallas.CrearRentaController.usuario;
/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class ListarRentaController implements Initializable {
    private Stage stage;
    static BigDecimal idP;
    private FacadeRenta faca = new FacadeRenta();
    @FXML
    private DatePicker FECHA;
    @FXML
    private TableView<Renta> TABLA;
    @FXML
    private TableColumn ID;
    @FXML
    private TableColumn COSTO;
    public void setIdP(BigDecimal idP) {
        ListarRentaController.idP = idP;
    }
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    } 
    public void setStage(Stage stage) {this.stage = stage;}
    @FXML
    void BotonListarRentas(ActionEvent event)throws IOException{
        MostrarRentas();
    }
    public void MostrarRentas(){
        LocalDate fecha = FECHA.getValue();
        ObservableList<Renta> REN;
        List<Renta> rentas = faca.ConsultarRentasPorPropiedadyFecha(idP, fecha);
        REN = FXCollections.observableArrayList(rentas);
        TABLA.setItems(REN);
        this.ID.setCellValueFactory(new PropertyValueFactory("id"));
        this.COSTO.setCellValueFactory(new PropertyValueFactory("costo"));
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
}

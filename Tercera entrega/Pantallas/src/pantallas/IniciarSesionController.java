/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/javafx/FXMLController.java to edit this template
 */
package pantallas;

import java.net.URL;
import java.util.List;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.stage.Stage;
import negocio.FacadeUsuario;
import entidades.Usuario;
import java.io.IOException;
import javafx.scene.Scene;
import javafx.scene.control.TextField;

/**
 *
 * @author Santiago Camilo Rey Benavides, Santiago Hernandez, Nicolas Ceron
 */
public class IniciarSesionController implements Initializable {
    Usuario usuario;
    private FacadeUsuario faca = new FacadeUsuario();
    
    @FXML private TextField user;
    @FXML private TextField pw;
    @FXML
    void BotonIniciar(ActionEvent event)throws IOException{

        usuario = faca.ConsultarUsuario(user.getText(), pw.getText());
        CrearRentaController controllerCr = new CrearRentaController();
        controllerCr.setUsuario(usuario);
        if (usuario.getUsuario().equals(user.getText()) && 
                usuario.getContrasena().equals(pw.getText())){
            cargarPantalla();
        }
    }

    Stage stage = new Stage();
    public void setStage(Stage stage) {this.stage = stage;}
    void cargarPantalla() throws IOException {
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
    @Override
    public void initialize(URL url, ResourceBundle rb) {

    }

}

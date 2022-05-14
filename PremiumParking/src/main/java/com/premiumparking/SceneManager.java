package com.premiumparking;

import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import java.util.Objects;

//SceneManager Class
public class SceneManager {
    //Variables
    private static Stage _stage;
    private static FXMLLoader _fxmlLoader;

    //InitializePrimaryStage
    public static void ToInitialScene(Stage stage) {
        //Local Variable
        Scene _scene;
        _stage = stage;
        //Creates a new instance of an FXMLLoader and gets the LoginPage fxml file
        _fxmlLoader = new FXMLLoader(Main.class.getResource("FXMLFiles/InitializerPage.fxml"));

        //Try-Catch to catch any errors
        try {
            //Creates a new scene instance and passes the loaded fxml file and the window dimensions
            _scene = new Scene(_fxmlLoader.load(), 400, 250);
        } catch (Exception _e) {
            //Display an error message
            System.out.println("Unable to load the _fxmlFile - ERROR: " + _e.getCause());
            return;
        }


        //Creates a new instance of an Image and gets the path to the logo
        Image _icon = new Image(Objects.requireNonNull(Main.class.getResource("ImageFiles/ApplicationIcon2.png")).toString());
        //Sets the Icon of the window
        _stage.getIcons().add(_icon);
        //Sets the window to undecorated
        _stage.initStyle(StageStyle.UNDECORATED);
        //Sets the title of the window
        _stage.setTitle("PremiumParking By WalkieJVC - Garage Initializer");
        //Makes the window not resizeable
        _stage.setResizable(false);
        //Sets the scene
        _stage.setScene(_scene);
        //Shows the stage
        _stage.show();
    }

    //Switches the scene to the main scene
    public static void ToMainScene(BorderPane _rootPane, String _message){
        //Local Variables
        BorderPane _borderPane;
        //Creates an instance of the FXMLLoader
        _fxmlLoader = new FXMLLoader(Main.class.getResource("FXMLFiles/GaragePage.fxml"));

        //Try-Catch to catch any errors
        try {
            //Loads the fxml file and assigns it to the borderPane
            _borderPane = _fxmlLoader.load();
        }catch (Exception _e){
            //Display an error message
            System.out.println("Unable to load the _fxmlFile - ERROR: " + _e.getCause());
            return;
        }

        //_sets all the children of the root pane to the borderPane
        _rootPane.getChildren().setAll(_borderPane);

        //Sets the title of the window
        _stage.setTitle("PremiumParking By WalkieJVC - Garage");

        //Sets a new width and height of the window
        _stage.setWidth(1280);
        _stage.setHeight(720);
        //Puts it in the center of the screen
        _stage.centerOnScreen();
        //Gets the controller
        GarageController _garageController = _fxmlLoader.getController();
        //Calls the initialize method from that controller instance
        _garageController.Initialize(_message);
        //Shows the stage
        _stage.show();
    }

    //Switches the scene to the main scene
    public static void ToPaymentScene(BorderPane _rootPane, String _licensePlate, String _state, String _size) {
        //Local Variables
        BorderPane _borderPane;
        //Creates an instance of the FXMLLoader
        _fxmlLoader = new FXMLLoader(Main.class.getResource("FXMLFiles/PaymentPage.fxml"));

        //Try-Catch to catch any errors
        try {
            //Loads the fxml file and assigns it to the borderPane
            _borderPane = _fxmlLoader.load();
        }catch (Exception _e){
            //Display an error message
            System.out.println("Unable to load the _fxmlFile - ERROR: " + _e.getCause());
            return;
        }

        //_sets all the children of the root pane to the borderPane
        _rootPane.getChildren().setAll(_borderPane);

        //Sets the title of the window
        _stage.setTitle("PremiumParking By WalkieJVC - Garage");

        //Sets a new width and height of the window
        _stage.setWidth(400);
        _stage.setHeight(250);
        //Puts it in the center of the screen
        _stage.centerOnScreen();
        //Gets the controller
        PaymentController _paymentController = _fxmlLoader.getController();
        //Calls the initialize method from that controller instance
        _paymentController.Initialize(_licensePlate, _state, _size);
        //Shows the stage
        _stage.show();
    }

}

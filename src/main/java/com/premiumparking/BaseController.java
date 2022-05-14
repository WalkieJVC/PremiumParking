package com.premiumparking;

import javafx.animation.TranslateTransition;
import javafx.application.Platform;
import javafx.event.Event;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import javafx.util.Duration;

public class BaseController {
    //QueryManager
    QueryHandler _queryHandler = new QueryHandler();
    //Stage
    public Stage _stage;
    //BorderPane
    @FXML
    public BorderPane _rootPane;
    //StageMovement
    private double _xOffset;
    private double _yOffset;
    //Buttons
    @FXML
    public Button _button;

    //Methods
    //QuitApplication Method
    @FXML
    private void QuitApplication() {
        Platform.exit(); //Quits the application
    }
    //MinimizeApplication Method
    @FXML
    private void MinimizeApplication() {
        //Gets the stage
        _stage = (Stage) _rootPane.getScene().getWindow();
        //Minimizes the application
        _stage.setIconified(true);
    }
    //HoverEnter Method
    @FXML
    private void HoverEnter(Event _event) {
        //Gets the button
        _button = (Button) _event.getSource();
        //Checks for the button ID
        if (_button.getId().matches("_noBackgroundButton"))
        {
            //If ID matches, sets the style of the button to text fill while
            _button.setStyle("-fx-text-fill: #ffffff;" +
                    "-fx-background-color: transparent;");
            return; //Returns
        }
        //If not, only changes the background color
        _button.setStyle("-fx-background-color: rgba(120,177,255,0.1);");
    }
    //HoverExit Method
    @FXML
    private void HoverExit() {
        //Checks for the button ID
        if (_button.getId().matches("_noBackgroundButton"))
        {
            //If ID matches, sets the style of the button to text fill while
            _button.setStyle("-fx-text-fill: #b5b5b5;" +
                    "-fx-background-color: transparent;");
            return; //Returns
        }
        //If not, only changes the background color
        _button.setStyle("-fx-background-color: transparent;");
    }
    //DragWindow Method
    @FXML
    private void DragWindow() {
        //Gets the scene
        Scene _scene = _rootPane.getScene();
        //Gets the stage from the scene
        _stage = (Stage) _rootPane.getScene().getWindow();

        //Uses the set on mouse pressed event to get the x and y position of the scene
        _scene.setOnMousePressed(event -> {
            _xOffset = event.getSceneX();
            _yOffset = event.getSceneY();
        });

        //Uses the set on mouse dragged event to get move the window by setting the x and y position of the stage
        _scene.setOnMouseDragged(event -> {
            _stage.setX(event.getScreenX() - _xOffset);
            _stage.setY(event.getScreenY() - _yOffset);
        });
    }

    //DisableButton Method
    public void DisableButton(Button _button)
    {
        //Creates a new instance of TranslateTransition
        TranslateTransition transition = new TranslateTransition();
        //Sets the duration for the transition
        transition.setDuration(Duration.millis(1000));
        //Sets the node
        transition.setNode(_button);
        //Sets AutoReverse to false
        transition.setAutoReverse(false);
        //Disables the Button
        _button.setDisable(true);
        //Once the transition finishes, enables the button
        transition.setOnFinished(evt -> _button.setDisable(false));

        transition.play(); //Plays the transition
    }
}

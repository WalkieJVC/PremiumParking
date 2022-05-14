package com.premiumparking;

import javafx.application.Application;
import javafx.stage.Stage;

public class Main extends Application {
    public static void main(String[] _args) {
        launch(_args);
    } //Launches with args as the parameter

    @Override
    public void start(Stage _stage) {
        //Calls the ToInitialScene of the SceneManager and passes the _scene as a parameter
        SceneManager.ToInitialScene(_stage);
    }
}

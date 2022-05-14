package com.premiumparking;

import javafx.fxml.FXML;
import javafx.stage.Stage;

public class InitializerController extends BaseController{

    @FXML //InitializeGarage Method
    private void InitializeGarage() {
        //Hides the stage
        _stage = (Stage) _rootPane.getScene().getWindow();
        //Hides the stage
        _stage.hide();
        //Calls the CallIsGarageInitialized Method from the query handler and the returned boolean is assigned to _isInitialized
        boolean _isInitialized = _queryHandler.CallIsGarageInitialized();

        //Checks if the garage is initialized by calling the IsGarageInitialized method in the DatabaseModule Class
        if (!_isInitialized)
        {
            //Populates the garage by calling the PopulateGarage method in the DatabaseModule Class
            _queryHandler.CallInitializeGarage();
        }
        //Switches the Scene to the main scene
        SceneManager.ToMainScene(_rootPane, "Application Successfully Initialized");
    }
}

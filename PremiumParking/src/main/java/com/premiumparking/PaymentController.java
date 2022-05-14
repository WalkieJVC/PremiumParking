package com.premiumparking;

import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

public class PaymentController extends BaseController{
    //Variables
    private String _licensePlate;
    private String _state;
    private String _size;

    //FXML Related Variables
    @FXML
    private Label _messageLabel;
    @FXML
    private Label _totalDueLabel;
    @FXML
    private TextField _creditCardField;

    //Initialize Method
    public void Initialize(String _licensePlate, String _state, String _size) {
        //Assigned the parameter values to the variables of this class
        this._licensePlate = _licensePlate;
        this._state = _state;
        this._size = _size;

        //Local Variable
        double _amountDue;
        //Calls the CallCalculateAmountDue and passes the _licensePlate, _state, and _size as the parameters, the returned value gets assigned to _amountDue
        _amountDue = _queryHandler.CallCalculateAmountDue(_licensePlate, _state, _size);

        //Displays a message
        _totalDueLabel.setText("Total Amount due: $" + _amountDue);
    }

    @FXML //Pay Method
    private void Pay() {
        //Local Variables
        String _cardNumber = _creditCardField.getText();

        //Checks if any fields are empty
        if(IsFieldEmpty(_cardNumber)) {
            //Displays a message
            _messageLabel.setText("All Fields Must Be Filled");
            return; //Returns
        }

        //Checks if the Credit Card Is Valid
        if(Validator.IsCreditCardValid(_cardNumber)){
            //Checks if the UnParkVehicle from the QueryHandler returns true
            if(_queryHandler.UnParkVehicle(_licensePlate, _state, _size, _cardNumber)){
                //Gets the Stage
                _stage = (Stage) _rootPane.getScene().getWindow();
                //Hides the stage
                _stage.hide();

                //Calls the ToMainScene Method from the SceneManager and passes the _rootPane and a string as the parameters
                SceneManager.ToMainScene(_rootPane, "Vehicle Successfully UnParked!");
                return; //Returns
            }
            //Displays a message
            _messageLabel.setText("Unable To UnPark Vehicle");
        }else{
            //Displays a message
            _messageLabel.setText("Invalid Credit Card Number");
        }
    }

    //IsFieldEmpty Method
    private boolean IsFieldEmpty(String _string) {
        //Checks if the string is null
        //Returns true
        return (_string == null || _string.equals(""));//Returns false
    }

    @FXML
    private void CancelTransaction() {
        //Gets the Stage
        _stage = (Stage) _rootPane.getScene().getWindow();
        //Hides the stage
        _stage.hide();

        //Calls the CallCancelPayment Method from the QueryHandler and passes the _licensePlate, _state, and _size as the parameters
        _queryHandler.CallCancelPayment(_licensePlate, _state, _size);

        //Calls the ToMainScene Method from the SceneManager and passes the _rootPane and a string as the parameters
        SceneManager.ToMainScene(_rootPane, "UnParking Successfully Canceled!");
    }

    //ClearFields Method
    private void ClearFields() {
        //Clears the license plate text field
        _creditCardField.clear();
    }

    @FXML //Clear Method
    private void Clear() {
        //Calls the ClearFields Method
        ClearFields();

        //Clears the message label
        _messageLabel.setText("");
    }
}

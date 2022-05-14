package com.premiumparking;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.Node;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;
import java.util.ArrayList;

public class GarageController extends BaseController{
    //ArrayList to store the table objets
    ArrayList<TableObject> _tableObjects;

    //FXML Related
    @FXML
    private ComboBox<String> _sizesField;
    @FXML
    public Label _sizeLabel;
    @FXML
    private TextField _licensePlateField;
    @FXML
    private ComboBox<String> _statesField;
    @FXML
    private Label _stateLabel;
    @FXML
    private Label _messageLabel;
    @FXML
    private Button _park;

    //Table FXML Variables
    //Table View
    @FXML
    private TableView<TableObject> _table;
    //Table Columns
    @FXML
    private TableColumn<TableObject, String> _locationIDColumn;
    @FXML
    private TableColumn<TableObject, String> _floorNumColumn;
    @FXML
    private TableColumn<TableObject, String> _spotSizeColumn;
    @FXML
    private TableColumn<TableObject, String> _spotNumColumn;
    @FXML
    private TableColumn<TableObject, String> _vehicleSizeColumn;
    @FXML
    private TableColumn<TableObject, String> _licensePlateColumn;
    @FXML
    private TableColumn<TableObject, String> _stateColumn;
    @FXML
    private TableColumn<TableObject, String> _dateParkedColumn;
    @FXML
    private TableColumn<TableObject, String> _timeParkedColumn;

    //InitializeVariables Method
    public void Initialize(String _message) {
        //Initializes the values for the ComboBoxes
        _sizesField.getItems().addAll("Large", "Compact", "Motorcycle");
        _statesField.getItems().addAll("AK","AL","AR","AZ","CA","CO","CT","CZ","DC","DE","FL","GA","GU","HI","IA","ID",
                "IL","IN","KS","KY","LA","MA","MD","ME","MI","MN","MO","MS","MT","NC","ND","NE","NH","NJ","NM","NV",
                "NY","OH","OK","OR","PA","PR","RI","SC","SD","TN","TX","UT","VA","VI","VT","WA","WI","WV","WY");

        //Sets a new label as the placeholder text for the table
        _table.setPlaceholder(new Label("No Vehicles Parked"));

        //Calls the GetDatabaseData Method from the QueryModule
        _tableObjects = _queryHandler.GetDatabaseData();

        //Displays a message
        _messageLabel.setText(_message);

        //Calls the PopulateTable Method
        PopulateTable();
    }

    @FXML//ParkVehicle Method
    private void ParkVehicle() {
        //Calls the DisableButton Method
        DisableButton(_park);

            //Variables
        //Non-FXML Related
        String _size = _sizesField.getSelectionModel().getSelectedItem();
        //Gets the string from the text field
        String _licensePlate = _licensePlateField.getText();
        //Gets the string from the selected item in the state ComboBox
        String _state = _statesField.getSelectionModel().getSelectedItem();

        _tableObjects = new ArrayList<>();

        //Checks if any fields are empty
        if(IsFieldEmpty(_size) || IsFieldEmpty(_licensePlate) || IsFieldEmpty(_state)) {
            //Displays a message
            _messageLabel.setText("All Fields Must Be Filled");
            return; //Returns
        }

        //Checks if the size, license plate and state is NOT valid
        if(!Validate("^[a-zA-Z]{5,10}$", _size, StringType.Other)) {
            //Displays a message
            _messageLabel.setText("Incorrect Format For Size");
            return; //Returns
        }else if(!Validate("^(?=[^- ])(?!.*([- ])\\1)[a-zA-Z0-9- ]{1,8}+(?<=[^- ])$", _licensePlate, StringType.LicensePlate)) {
            //Displays a message
            _messageLabel.setText("Incorrect Format For License Plate");
            return; //Returns
        } else if(!Validate("^[a-zA-Z]{2}$", _state, StringType.Other)) {
            //Displays a message
            _messageLabel.setText("Incorrect Format For State");
            return; //Returns
        }

        //Displays a message
        _messageLabel.setText("Attempting to Park Vehicle...");

        //Calls the ParkVehicle Method in the database Module and the returned object gets assigned to _tableObject
        _tableObjects = _queryHandler.ParkVehicle(_licensePlate, _state, _size);

        //Checks if the resultSet
        if (_tableObjects != null) {
            //Calls the PopulateTable Method
            PopulateTable();
            //Displays a message
            _messageLabel.setText("Vehicle Successfully Parked!");
            //Clears all fields
            ClearFields();
            return; //Returns
        }
        //Displays a message
        _messageLabel.setText("Either The Vehicle Is Already Parked, Or There Are No Spots Available.");
        ClearFields(); //Clears all fields
    }

    @FXML//ParkVehicle Method
    private void UnParkVehicle() {
            //Variables
        //Non-FXML Related
        String _size = _sizesField.getSelectionModel().getSelectedItem();
        //Gets the string from the text field
        String _licensePlate = _licensePlateField.getText();
        //Gets the string from the selected item in the state ComboBox
        String _state = _statesField.getSelectionModel().getSelectedItem();

        _tableObjects = new ArrayList<>();

        //Checks if any fields are empty
        if(IsFieldEmpty(_size) || IsFieldEmpty(_licensePlate) || IsFieldEmpty(_state)) {
            //Displays a message
            _messageLabel.setText("All Fields Must Be Filled");
            return; //Returns
        }

        //Checks if the size, license plate and state is NOT valid
        if(!Validate("^[a-zA-Z]{5,10}$", _size, StringType.Other)) {
            //Displays a message
            _messageLabel.setText("Incorrect Format For Size");
            return; //Returns
        }else if(!Validate("^(?=[^- ])(?!.*([- ])\\1)[a-zA-Z0-9- ]{1,8}+(?<=[^- ])$", _licensePlate, StringType.LicensePlate)) {
            //Displays a message
            _messageLabel.setText("Incorrect Format For License Plate");
            return; //Returns
        } else if(!Validate("^[a-zA-Z]{2}$", _state, StringType.Other)) {
            //Displays a message
            _messageLabel.setText("Incorrect Format For State");
            return; //Returns
        }

        //Check if Vehicle Entered matches any vehicles in the database
        if (_queryHandler.CallDoesVehicleMatch(_licensePlate, _state, _size)) {
            //Gets the stage by getting the scene than the window and casting it as a stage
            _stage = (Stage) _rootPane.getScene().getWindow();
            //Hides the stage
            _stage.hide();

            //Calls the ToPaymentScene Method from the SceneManager and passes the root pane, license plate, state, and size as parameters
            SceneManager.ToPaymentScene(_rootPane, _licensePlate, _state, _size);
        }
        //Displays a message
        _messageLabel.setText("Unable To Find A Vehicle With That Description");
    }

    //PopulateTable Method
    private void PopulateTable(){
        //For-Loop to iterate through every TableObject in _tableObjects
        for(TableObject _obj: _tableObjects)
        {
            //Sets the cell factory value for every column in the table
            _locationIDColumn.setCellValueFactory(new PropertyValueFactory<>("LocationID"));
            _floorNumColumn.setCellValueFactory(new PropertyValueFactory<>("FloorNumber"));
            _spotSizeColumn.setCellValueFactory(new PropertyValueFactory<>("SpotSize"));
            _spotNumColumn.setCellValueFactory(new PropertyValueFactory<>("SpotNumber"));
            _vehicleSizeColumn.setCellValueFactory(new PropertyValueFactory<>("Size"));
            _licensePlateColumn.setCellValueFactory(new PropertyValueFactory<>("LicensePlate"));
            _stateColumn.setCellValueFactory(new PropertyValueFactory<>("State"));
            _dateParkedColumn.setCellValueFactory(new PropertyValueFactory<>("InDate"));
            _timeParkedColumn.setCellValueFactory(new PropertyValueFactory<>("InTime"));

            _table.getItems().add(_obj); //Adds the object to the table
            _table.getSortOrder().add(_locationIDColumn); //Sorts the Table By LocationID
        }
    }

    //IsFieldEmpty Method
    private boolean IsFieldEmpty(String _string) {
        //Checks if the string is null
        //Returns true
        return (_string == null || _string.equals(""));//Returns false
    }

    //Validate Method
    private boolean Validate(String _regex, String _string, StringType _type){
        //Returns the returned value from the validator instance method IsStringValid
        return new Validator<>(_regex).IsStringValid(_string, _type);
    }

    @FXML //Select Method
    private void Select(ActionEvent _e) {
        //Local Variables
        final Node source = (Node) _e.getSource(); //Node used to get the id from the source to compare
        String id = source.getId();                //Holds the value for the ID as a string

        //Checks if the id from the source is equal to _vehicleSize
        if (id.equals("_sizesField")) {
            //Sets the vehicle size label text
            _sizeLabel.setText("");
            return; //Returns
        }
        //Sets the license plate label text
        _stateLabel.setText("");
    }

    @FXML //RotateArrow Method
    private void RotateArrow(MouseEvent _e) {
        //Checks if the source of the mouse event is the _vehicle size comboBox
        if (_sizesField.equals(_e.getSource())) {
            //Calls the rotate method and passes the vehicle, and the angle to rotate
            Rotate(_sizesField, 20);
            return; //Returns
        }
        //Calls the rotate method and passes the vehicle, and the angle to rotate
        Rotate(_statesField, 20);
    }

    @FXML //ResetArrow Method
    private void ResetArrow(MouseEvent _e) {
        //Checks if the source of the mouse event is the _vehicle size comboBox
        if (_sizesField.equals(_e.getSource())) {
            //Calls the rotate method and passes the vehicle, and the angle to rotate
            Rotate(_sizesField, 0);
            return; //Returns
        }
        //Calls the rotate method and passes the vehicle, and the angle to rotate
        Rotate(_statesField, 0);
    }

    //Rotate Method
    private void Rotate(ComboBox<String> _comboBox , int _angle) {
        //Adds a rotating effect to the dropdown arrow in the combo box
        _comboBox.lookup(".arrow-button").setStyle("-fx-rotate: " + _angle + ";");
    }

    //ClearFields Method
    private void ClearFields() {
        //Clears the selection and sets the text to the vehicle size label
        _sizesField.getSelectionModel().clearSelection();
        _sizeLabel.setText("Vehicle Size");

        //Clears the selection and sets the text to the vehicle size label
        _statesField.getSelectionModel().clearSelection();
        _stateLabel.setText("License Plate State");

        //Clears the license plate text field
        _licensePlateField.clear();
    }

    @FXML //Clear Method
    private void Clear() {
        //Calls the ClearFields Method
        ClearFields();

        //Clears the message label
        _messageLabel.setText("");
    }
}

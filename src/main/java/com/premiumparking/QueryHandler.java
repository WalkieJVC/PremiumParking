package com.premiumparking;

import java.sql.*;
import java.util.ArrayList;

public class QueryHandler {
    //Connection
    private Connection _connection;
    //Callable Statement
    private CallableStatement _callableStatement;
    //ResultSet
    private ResultSet _output;

    /*-------------------------------------- Methods that Call Queries -----------------------------------------------*/
    public ArrayList<TableObject> GetDatabaseData() {
        //Calls the CallGetAllParkingDetails Method and the returned value is assigned to _output
        _output = CallGetAllParkingDetails();
        return PopulateTableObjects(); //Returns the returned value from PopulateTableObjects Method
    }

    //Initialize Method
    private int InitializeGarage(int _iD, String _size) {
        //For-Loop, Loops through all 5 floors of the garage
        for (int f = 1; f <= 5; f++) {
            //For-Loop, Loops through a total of 20 times, populating the garage table with 20 spots per spot size
            for (int s = 1; s <= 20; s++) {
                _iD++;
                //Sets the String with the syntax to call the stored procedure to populate the garage with the spots
                String _sP_PopulateGarage = "call `premiumparking`.`InitializeGarage` (" + _iD + "," + f + "," + s + ",'" + _size + "');";
                //Calls the ExecuteQuery Method
                Execute(_sP_PopulateGarage);
            }
        }
        return _iD; //Returns the iD it left off at
    }

    //ParkVehicle Method
    public ArrayList<TableObject> ParkVehicle(String _licensePlate, String _state, String _size) {
        //Initializes the Store procedure call string
        String _sP_ParkVehicle = "call `premiumparking`.`ParkVehicle` ('" + _licensePlate + "','" + _state + "','" + _size + "');";
        //Calls the ExecuteQuery Method and assigns the returned value to _output variable
        ResultSet _result = ExecuteQuery(_sP_ParkVehicle);

        //Try-Catch to catch any exceptions
        try {
            //Checks if result has a next
            if (_result != null && _result.next())
            {
                //Checks if the boolean value from the result set column value is true
                if(Boolean.parseBoolean(_result.getString("Value"))){
                    //Calls the get parking details and assigns the returned value to variable _output
                    _output = CallGetParkingDetails(_licensePlate, _state);
                    //Calls the PopulateTableObjects and returns the returned value
                    return PopulateTableObjects();
                }
            }
        } catch (Exception _e) {
            //Displays an error message
            System.out.println("Unable to extract value from _result - ERROR: " + _e.getCause());
        }
        return null; //Returns Null
    }

    //UnParkVehicle Method
    public boolean UnParkVehicle(String _licensePlate, String _state, String _size, String _creditCard) {
            //Local Variables
        //Initializes the Store procedure call string
        String _sP_UnParkVehicle = "call `premiumparking`.`UnParkVehicle` ('" + _licensePlate + "','" + _state + "','" + _size + "','" + _creditCard + "');";
        ResultSet _result;                      //Used to store the result set from a query call
        boolean _hasBeenUnParked = false;       //Used to check if the vehicle has been un-parked. False by default

        //Calls the ExecuteQuery Method and assigns the returned value to _output variable
        _result = ExecuteQuery(_sP_UnParkVehicle);

        //Try-Catch to catch any exceptions
        try {
            //Checks if the result set has a next
            if (_result != null && _result.next())
            {
                //Gets the boolean value of the string in the column labeled Value, and it's assigned to variable _hasBeenUnParked
                _hasBeenUnParked = Boolean.parseBoolean(_result.getString("Value"));
            }
        }catch (Exception _e){
            //displays an error message
            System.out.println("Unable to extract value from _result - ERROR: " + _e.getCause());
        }

        return _hasBeenUnParked; //Returns _hasBeenUnParked
    }

    //PopulateTableObjects Method
    private ArrayList<TableObject> PopulateTableObjects() {
        //TableObject
        ArrayList<TableObject> _objs = new ArrayList<>();

        //Try-Catch to catch any exceptions
        try {
            //Loop to iterate through everything in the result set _output
            while (_output.next())
            {
                //Creates a new instance of TableObject and adds it to the _objs list
                _objs.add(new TableObject(
                        _output.getString("LocationID"),
                        _output.getString("FloorNumber"),
                        _output.getString("SpotSize"),
                        _output.getString("SpotNumber"),
                        _output.getString("Size"),
                        _output.getString("LicensePlate"),
                        _output.getString("State"),
                        _output.getString("InDate"),
                        _output.getString("InTime")
                ));
            }
        } catch (Exception _e){
            //Displays an error message
            System.out.println("Unable to populate Arraylist _objs - ERROR: " + _e.getCause());
        }

        //Closes the Connection
        CloseConnection();
        //Returns the objects
        return _objs;
    }

    /*----------------------------------------- Pre-Defined Calls ----------------------------------------------------*/
    //CallIsGarageInitialized Method
    public boolean CallIsGarageInitialized() {
        //Local Variables
        boolean _exists = false;                                                        //Initializes the exists variable
        String _sP_CheckGarage = "call `premiumparking`.`IsGarageInitialized` ();";     //Initializes the Store procedure call string
        //Empties the Result set by setting it to null
        _output = null;

        //Try-Catch to catch any exceptions
        try {
            //Calls the ExecuteQuery Method and assigns the returned value to _output variable
            _output = ExecuteQuery(_sP_CheckGarage);
            //Checks if _output has next
            if (_output != null && _output.next()) {
                //Returned the boolean value of the returned output
                _exists = Boolean.parseBoolean(_output.getString("Value"));
            }
        } catch (Exception _e) {
            //Displays an error message
            System.out.println("Unable to extract value from _output - ERROR" + _e.getCause());
            //Closes Connection
            CloseConnection();
        }
        CloseConnection();
        return _exists; //Returns false
    }

    //CallInitializeGarage Method
    public void CallInitializeGarage() {
        //Local Variables
        int _iD = 0;    //Holds the returned value from the populate method

        //Calls to GetConnection Method
        EstablishConnection();

        //Calls the Populate Method and the returned value gets assigned to _iD
        _iD = InitializeGarage(_iD ,"Large");
        //Calls the Populate Method and the returned value gets assigned to _iD
        _iD = InitializeGarage(_iD ,"Compact");
        //Calls the Populate Method
        InitializeGarage(_iD ,"Motorcycle");

        //Calls the CloseConnection Method
        CloseConnection();
    }

    //CallDoesVehicleExist Method
    public boolean CallDoesVehicleMatch(String _licensePlate, String _state, String _size) {
            //Local Variables
        //Initializes the Store procedure call string
        String _sP_DoesVehicleExist = "call `premiumparking`.`DoesVehicleMatch` ('" + _licensePlate + "','" + _state + "','" + _size + "');";
        //Initializes the boolean variable _exists
        boolean _exists = false;
        //ResultSet variable used to store what is returned by the store procedure
        ResultSet _result;

        //Calls the ExecuteQuery method and the returned value is assigned to result
        _result = ExecuteQuery(_sP_DoesVehicleExist);
        //Try-Catch to catch any errors
        try {
            //Checks if the result set has a next
            if (_result != null && _result.next()) {
                //Gets the value from the result set
                _exists = Boolean.parseBoolean(_result.getString("Value"));
            }
        } catch (Exception _e){
            //Displays an error message
            System.out.println("Unable to extract value from _result - ERROR: " + _e.getCause());
        }

        //Closes the connection
        CloseConnection();
        return _exists; //Returns the value of _exists
    }

    //CallGetParkingDetails
    private ResultSet CallGetParkingDetails(String _licensePlate, String _state) {
        //Initializes the Store procedure call string
        String _sP_GetParkingDetails = "call `premiumparking`.`GetParkingDetails` ('" + _licensePlate + "','" + _state + "');";
        //Returns the returned value from method ExecuteQuery
        return ExecuteQuery(_sP_GetParkingDetails);
    }

    //CallGetAllData Method
    private ResultSet CallGetAllParkingDetails() {
        //Initializes the Store procedure call string
        String _sP_GetAllParkingDetails = "call `premiumparking`.`GetAllParkingDetails` ();";
        //Returns the returned value from method ExecuteQuery
        return ExecuteQuery(_sP_GetAllParkingDetails);
    }

    public double CallCalculateAmountDue(String _licensePlate, String _state, String _size) {
            //Local Variables
        //Initializes the Store procedure call string
        String _sP_GetAllParkingDetails = "call `premiumparking`.`CalculateAmountDue` ('" + _licensePlate + "', '" + _state + "', '" + _size + "');";
        ResultSet _result;

        //Calls the ExecuteQuery Method and passes the _sP_GetAllParkingDetails as a parameter. The returned result set gets assigned to _result
        _result = ExecuteQuery(_sP_GetAllParkingDetails);

        //Try-Catch to catch any errors
        try {
            //Checks if the result set has a next
            if (_result != null && _result.next())
            {
                //Returns the double value of the string in the column labeled Value
                return Double.parseDouble(_result.getString("Value"));
            }
            return 0; //Returns 0
        }catch (Exception _e){
            //Displays an error message
            System.out.println("Unable to extract value from _result - ERROR: " + _e.getCause());
            return 0; //Returns 0
        }
    }

    public void CallCancelPayment(String _licensePlate, String _state, String _size) {
        //Initializes the Store procedure call string
        String _sP_GetAllParkingDetails = "call `premiumparking`.`CancelPayment` ('" + _licensePlate + "', '" + _state + "', '" + _size + "');";
        Execute(_sP_GetAllParkingDetails);
    }

    /*----------------------------------------- Custom Query Calls ---------------------------------------------------*/
    //Execute Method
    private void Execute(String _query) {
        //Establish a connection
        EstablishConnection();
        //Try-Catch to catch any errors
        try{
            //Prepares the call and assigns the returned value to the _callableStatement variable
            _callableStatement = _connection.prepareCall(_query);
            //Executes the Store Procedure
            _callableStatement.execute();
        }catch (Exception _e){
            //Close the connection
            CloseConnection();
            return; //returns
        }
        //Close the connection
        CloseConnection();
    }

    //ExecuteQuery Method
    private ResultSet ExecuteQuery(String _query) {
        //Establish a connection
        EstablishConnection();

        try {
            //Prepares the call and assigns the returned value to the _callableStatement variable
            _callableStatement = _connection.prepareCall(_query);
            //Executes the Store Procedure and returns the returned value
            return _callableStatement.executeQuery();
        }catch (Exception _e){
            //Displays an error message
            System.out.println("Unable Execute Query - ERROR : " + _e.getCause());
            //Calls the CloseConnection Method
            CloseConnection();
            return null; //Returns null
        }
    }

    /*----------------------------------------- Connection Methods ---------------------------------------------------*/
    //EstablishConnection Method
    private void EstablishConnection(){
        //Local Variables
        String _databaseName = "name";                            //Database Name
        String _databaseUsername = "username";                                  //Database UserName
        String _databasePassword = "password";         //Database Password
        String _url = "jdbc:mysql://localhost:3306/" + _databaseName;       //Database URL

        //Try-Catch
        try {
            //Sets the class for name
            Class.forName("com.mysql.cj.jdbc.Driver");
            //Attempts to make a connection with the database
            _connection = DriverManager.getConnection(_url, _databaseUsername, _databasePassword);

        }catch (Exception _e) {
            //Displays the stack trace of the error message
            System.out.println("Unable to establish connection - ERROR: " + _e.getCause());
        }
    }

    //CloseConnection Method
    public void CloseConnection() {
        //Try-Catch To catch any errors
        try {
            //Closes the connection
            _connection.close();
        }catch (Exception _e){
            //Displays an error message
            System.out.println("Unable to close connection - ERROR: " + _e.getCause());
        }
    }



}

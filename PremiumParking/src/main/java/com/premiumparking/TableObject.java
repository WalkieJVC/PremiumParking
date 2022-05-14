package com.premiumparking;

public class TableObject {
        //Variables
    private final int _locationID;        //Used to store the location id
    private final int _floorNumber;       //Used to store the floor number
    private final String _spotSize;       //Used to store the spot size
    private final int _spotNumber;        //Used to store the spot number
    private final String _vehicleSize;    //Used to store the vehicle size
    private final String _licensePlate;   //Used to store the license plate
    private final String _state;          //Used to store the state
    private final String _dateParked;     //Used to store the date parked
    private final String _timeParked;     //Used to store the time parked

        //Constructor
    public TableObject(String _locationID, String _floorNumber, String _spotSize,String _spotNumber,String _vehicleSize,
                       String _licensePlate,String _state,String _dateParked, String _timeParked)
    {
        //Assigns the values from the parameters to the variables of this instance
        this._locationID = Integer.parseInt(_locationID);           //Stores the value as an int
        this._floorNumber = Integer.parseInt(_floorNumber);         //Stores the value as an int
        this._spotSize = _spotSize;                                 //Stores the value as a String
        this._spotNumber = Integer.parseInt(_spotNumber);           //Stores the value as an int
        this._vehicleSize = _vehicleSize;                           //Stores the value as a String
        this._licensePlate = _licensePlate;                         //Stores the value as a String
        this._state = _state;                                       //Stores the value as a String
        this._dateParked = _dateParked;                             //Stores the value as a String
        this._timeParked = _timeParked;                             //Stores the value as a String
    }//Stores the value as an

        //Getters
    public int getLocationID () {return this._locationID;}          //Returns the location id
    public int getFloorNumber () {return this._floorNumber;}        //Returns the floor number
    public String getSpotSize () {return this._spotSize;}           //Returns the spot size
    public int getSpotNumber () {return this._spotNumber;}          //Returns the spot number
    public String getSize () {return this._vehicleSize;}            //Returns the vehicle size
    public String getLicensePlate () {return this._licensePlate;}   //Returns the license plate
    public String getState () {return this._state;}                 //Returns the state
    public String getInDate () {return this._dateParked;}           //Returns the date parked
    public String getInTime () {return this._timeParked;}           //Returns the time parked
}

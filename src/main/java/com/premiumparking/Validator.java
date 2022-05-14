package com.premiumparking;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

//Generic Class
public class Validator <T extends String> {

        //Class variables
    private final T _regexObj;            //Used to store the pattern

    //Constructor
    public Validator(String _regexObj){
        //Assigns the parameter value to the variable of this instance
        this._regexObj = (T) _regexObj;
    }

    //IsStringValid Method
    public boolean IsStringValid(String _string, StringType _type)
    {
        //local variables
        Pattern _pattern;
        Matcher _matcher;

        //Compiles the pattern
        _pattern = Pattern.compile(_regexObj);

        //Adds the email to _matcher.
        _matcher = _pattern.matcher(_string);

        switch (_type)
        {
            case LicensePlate -> {
                //Checks if the string matches the regex pattern
                if (_matcher.matches()) {
                    //Checks if the string contains a space or a dash
                    if (_string.contains(" ") || _string.contains("-")) {
                        //Returns the returned value of ValidateContinuity Method
                        return ValidateContinuity(_string);
                    }
                    return true; //Returns true
                }
            }
            case Other -> {return _matcher.matches();} //Returns the returned value from the matches method from the Mather
        }
        return false; //Returns false
    }

    //ValidateContinuity Method
    private boolean ValidateContinuity(String _string)
    {
            //Local Variables
        int _count = 0;
        //For-Loop To check through every character of a string
        for (int i = 0; i < _string.length(); i++) {
            //Checks if the character at position i is not a letter or a digit
            if(!Character.isLetter(_string.charAt(i)) && !Character.isDigit(_string.charAt(i))) {
                //Adds one to count
                _count++;
                //Checks if count is greater than one
                if (_count > 1) {return false;} //Returns false
            } else {
                //Resets count to 0
                _count = 0;
            }
        }
        return true; //Returns true
    }

    //IsCreditCardValid Method
    public static boolean IsCreditCardValid(String _creditCard) {
            //Local Variables
        //Initializes _integers Array with a new array of the length of the string
        int[] _integers = new int[_creditCard.length()];
        int j;
        //Initializes the variable sum with a default value of 0
        int sum = 0;

        //ForLoop Used to iterate through every number in the string
        try{
            //For loop to iterate through every integer in the card
            for (int i = 0; i < _creditCard.length(); i++) {
                //Parses the int of the substring of position i and i + 1, then that value is assigned to the position i in the _integers list
                _integers[i] = Integer.parseInt(_creditCard.substring(i, i + 1));
            }
        }catch (Exception _e){
            return false; //Returns False
        }

        //For-loop used to iterate through every other number of the card
        for (int i = _integers.length - 2; i >= 0; i -= 2) {
            //Assigns the integer at position i to variable j
            j = _integers[i];

            //Multiplies j time 2 and that value is assigned to j
            j *= 2;

            //Checks if j is greater than 9
            if (j > 9) {
                //Calculates the remainder 10 of j and adds 1
                j = j % 10 + 1;
            }
            //The value of j is assigned to the integer in the integers list at position i
            _integers[i] = j;
        }

        //For-loop used to iterate through every number in the integers list
        for (int integer : _integers) {
            //Adds the sum variable plus the integer at position i in the integers list, and the result is assigned to the sum variable
            sum += integer;
        }

        //Checks if the remainder of 10 of the sum is equal to 0
        return sum % 10 == 0;    //Returns true
//Returns false
    }
}


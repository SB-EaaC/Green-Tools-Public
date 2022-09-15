// Hello!  Welcome to the UltraEdit scripting environment.  Normally, you would
// put a header comment at the top of a javascript file to be used in UltraEdit
// in order to indicate the version of the UltraEdit scripting API, like so:
// Version = 1.00
// However, this is currently not necessary since the API will default to 1.00.

// ----------------------------------------------------------------------------
// reverseLine.js
// This script takes a selection of lines and reverses the order
// Copyright (c)2007 IDM Computer Solutions, Inc.
// ----------------------------------------------------------------------------
// UltraEdit is our application object.  All UltraEdit operations will use this
// object.
// See UltraEdit Help for more details.

//line terminator character 
//you may need to change this depending on the file type 
var lineTerminator = "\r\n"; 

//variables
var stringArray = new Array(); //create array to hold string values
var arrayLength = 0; //array length 
var strings; //variable which holds selection

//Get user selection
strings = UltraEdit.activeDocument.selection;

//split string at line terminator characters	
stringArray = strings.split(lineTerminator);

//reverse array
stringArray.reverse(); 

//get length of array
arrayLength = stringArray.length;

for (var i = 0; i < arrayLength; i++) {
  //Output value in array
  UltraEdit.activeDocument.write(stringArray[i]);
  //write the line terminator, except for on the last value in array
  if (i != (arrayLength - 1)) {
    UltraEdit.activeDocument.write(lineTerminator);
  }
}
/*
* Arrays in solidity are of two types
* 1. storage array: -these are stored in blockchain
*                   -can be dynamic sized array
* 2. memory array: -temp array stored in memory
*                   while executing function but after function execution it will disappear.
*                  -static sized array
*/

pragma solidity ^0.5.0;

contract MyContract{
   
    // Storage dynamic sized array
    string[] public person;
    // Storage static sized array
    uint[4]  nmbrs;
    
    function func_storageArray() public {
        //add values
        person.push('abc');   
        person.push('xyz');
        nmbrs[0] = 123; // push can not be used in static array
        nmbrs[1] = 456;
        
        // read
        person[0];
        nmbrs[1];
        
        // update
        person[0] = 'Pooja Kumari';
        nmbrs[1] = 789;
        
        //datele
        delete person[1];
        delete nmbrs[1];
        
    }
    
    function func_memoryArray() public pure{
    
          // Memory array, of static size 2
        uint[] memory myArray = new uint[](2);
        // add values
        myArray[0] = 65;
        // read
        myArray[0];
        //update 
        myArray[0] = 32;
        // delete
        delete myArray[0];
    }
}
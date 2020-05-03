/*
*mapping is like a key-value pair
*/

pragma solidity ^0.5.0;

contract MyContract{
    
    mapping(address=>string) person;
    
    
    function func_mapping(string calldata addr) external{  
        //calldata is memory location for external/public visibility that handle complex data for trnsaction
        
        //add key-value
        person[msg.sender]='Pooja';
        //read
        person[msg.sender];
        //update
        person[msg.sender]=addr;
        //delete
        delete person[msg.sender];
    }
    
}
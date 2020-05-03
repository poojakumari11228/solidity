/*
* Constructor -> called only once when smart contract is deployed.
*             -> visibility modifier can only be public or internal
*             -> in case of internal it will not be deployed directly
*/

pragma solidity ^0.5.11;

contract MyContract{
    
    string public course;
    
 constructor(string memory _course) public{
     
     course = _course;
 }   
     
    }
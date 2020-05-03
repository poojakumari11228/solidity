/*
* EVENTS:
* For UX -> To stay up to date for the transactions
* gas cost for event is less than storage
* we can not read event from smart contract but from the UI
*/

pragma solidity ^0.5.11;

contract MyContract{

 // state variables
 
 
    // declare event
    event msgSent(
        uint date,
        string msg,
        address from,
        address to
        );
   
   
    function func_events(address  _to, string memory _msg) public {
     
    //  emit event
    emit msgSent(now, _msg, msg.sender, _to);
    
     
    }
    
    
}
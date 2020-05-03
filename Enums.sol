/*
* ENUMS: used to represent different options.
*/

pragma solidity ^0.5.11;

contract MyContract{

 // state variables
 
    // enum
    enum STATE{  // 2, enum : for options  
        ACTIVE,
        INACTIVE
    }
    
    // Struct
    struct person {   //1. struct : templete with different fields that represent your data.
        uint id;
        string name;
        STATE state;
    }
    
   
    
   
    function func_enums() public pure{
     
     person memory p1 = person(1,'Abc',STATE.ACTIVE);
     person memory p2 = person(2,'Xyz',STATE.INACTIVE);
     
    }
    
    
}
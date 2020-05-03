pragma solidity ^0.5.11;

contract MyContract{

 // state variables
    
    //fixed sized types
    bool public isActiveUser;
    uint public myBalance;     // i.e. uint256 which stores max: of 2^256 -1 value
    address public myAccount;  // 20 bytes long (160 bits) 
    bytes32  data;       // 32 bytes
    
    // variable size types
    string userName;
    bytes  _data;      // for binary data
    uint[] amounts;          // array, homogenous
    mapping(uint => string) users; //like key-value pair 
    
    // user defined data
    struct person {   //1. struct : templete with different fields that represent your data.
        uint id;
        string name;
        bool staff;
    }
    
    enum STATE{  // 2, enum : for options  
        ACTIVE,
        INACTIVE
    }
    
    // let's make a function to manipulate these data types
    
    function initialize() public {
        
        isActiveUser= true;
        myAccount = msg.sender;
        myBalance = myAccount.balance;
        
        
        
    }
    
    
}
/*
* visibility keywords define who can have access to functions/variables
*/

pragma solidity ^0.5.11;

contract MyContract{
    
    
    // state variable
    string public name; // public 
    uint a =10;    // deault private
    uint internal b = 12;   //internal
    
    // 1. Private: 
    // - Most restricted
    // - can only be accessed from within the smart contract
    
    function func_private() private pure returns(string memory){
        return 'You called a private function.';
    }
    
    
    // 2. internal:
    //  - restricted
    //  - accessed from within the smart contract
    //  - from those contracts which inheret this SM.
    
    function func_internal() internal view returns(uint sum){
        sum = a+b;
    }
    
    // 3. external:
    //  - accessed only from outside of smart contract
    function func_external() external view returns(string memory, uint, uint){
        return(name, a, b);
    } 
    
    // 4. public:
    // - Most permissive
    // - accessed from inside of smart contract as well as outside
    // - public vaiables create a gettter method of that variable we can check
    //    its blue button getter by deploying contract
    function func_public(string memory _name) public{
        name = _name;
    }
    
    function func_calls() public {
        
        func_private();
        func_internal();
        // func_external();  ERROR! functin not visible b/c its externals
        func_public('Pooja');
    }
}



    
    // memory is o specify memory location, i.e. the returning string will not be stored in the blockchain but 
    // it will be stored in memory as long as the function is in running state.
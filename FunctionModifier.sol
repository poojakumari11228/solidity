pragma solidity ^0.5.11;

contract MyContract{
    
    // state variable
    uint a;
    
    //1.  view functions modifier will not modify any data i.e read only functions
    // view return values from block chain
    // in older versions of solidity constant was used instead of view
    function get_a() public view returns(uint){
        return a;
    }
    
    //2. pure function modify, when we are not even reading from blockchain but
    // want to do some processing, calculations or hashing of data.
    function pureExample()  public pure returns(string memory){
        return 'This text is returned from pure function.';
    }
    
    // argument variable name should be different from the state variable
    function set_a(uint _a) public {
        a = _a;
    }


}
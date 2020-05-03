/*
* statement that determines whether other statements will be executed or not
*/

pragma solidity ^0.5.11;

contract MyContract{
    // state variables
    uint a=5;
    
    function func_if() public view returns(string memory){
        
    // 1. if statement
    if (a%2 ==0){
        return 'Even number';
    }else{
      return 'Odd number';
    }
   
    }
    
     function func_loop() public view returns(uint){
        
    uint sum=0;  
     // 2. for loop
    for(uint i =2; i<a; i++){
    sum += i;
    }
    
    // 3. while loop
   
    while(sum<100){
       sum += sum;
    }
    
    return sum;
     }
  
}
/*
* Structs, Templete with different fields to represent the data
*/

pragma solidity ^0.5.0;

contract MyContract{
    
    // struct for students
    struct student{
    string fname;
    string lname;
    uint rollNmbr;
    }
    
    // array of struct student
    student[] std_array;
    
    // mapping of struct
    mapping(address=>student) std_mapping;
    
    function func_struct() external {
    
        //instance of struct
        student memory s1 = student('Pooja', 'Kumari',1);
        
        student memory s2 = student('Abc', 'xyz',2);
        
        //access data
        s1.rollNmbr;
        s2.fname;
        
        //update
        s1.rollNmbr=17;
        
        //delete
        delete s2;
        
        // Array of struct
        std_array.push(s1);
        std_array.push(s2);
        
        // mapping of struct
        std_mapping[msg.sender]=s2;
        
        
        }
    
}
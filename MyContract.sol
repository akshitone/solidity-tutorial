pragma solidity >=0.6.0 <0.9.0;

contract MyContract {
    // public variable declaration with default value
    string public value = "Hello World";

    // constant variable declaration
    string public constant constValue = "Hello World 2";

    bool public myBool = true;

    int public myInt = 1; 

    // unsigned int - can not be negative
    uint public myUint = 2; 

    // setValue function (string)
    function setValue(string memory _value) public {
        value = _value;
    } 
}
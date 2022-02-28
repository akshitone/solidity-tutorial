pragma solidity >=0.6.0 <0.9.0;

contract MyContract {
    // public variable declaration with default value
    string public value = "Hello World";

    // setValue function (string)
    function setValue(string memory _value) public {
        value = _value;
    } 
}
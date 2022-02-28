pragma solidity >=0.6.0 <0.9.0;

contract MyContract {
    // public variable
    string value; 

    // constructor
    constructor() public {
        value = "Hello, world!";
    } 

    // setValue function (string)
    function setValue(string memory _value) public {
        value = _value;
    } 

    // getValue function (string)
    function getValue() public view returns (string memory) {
        return value;
    } 
}
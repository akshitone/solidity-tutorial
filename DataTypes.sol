pragma solidity >=0.6.0 <0.9.0;

contract DataTypes {
    // public variable declaration with default value
    string public value = "Hello World";

    // constant variable declaration
    string public constant constValue = "Hello World 2";

    bool public myBool = true;

    int public myInt = 1; 

    // unsigned int - can not be negative
    uint public myUint = 2; 

    // enum declaration
    enum State {
        Waiting,
        Ready,
        Active,
        Finished
    } 

    // enum variable declaration
    State public state; 

    constructor() public {
        state = State.Waiting;
    }

    // activate the state
    function activateState() public {
        state = State.Active;
    }

    // check if the state is active 
    function isActive() public view returns (bool) {
        return state == State.Active;
    } 

    // setValue function (string)
    function setValue(string memory _value) public {
        value = _value;
    } 
}
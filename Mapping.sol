pragma solidity >=0.6.0 <0.9.0;

contract Mapping {
    //number of people in the system
    uint256 public numPeople=0; 
    
    // mapping of uint to Person
    mapping(uint=>Person) public people; 

    // time of contract creation
    uint256 openingTime = 1646194857; 

    // owner of the contract
    address owner; 

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner { 
        // only the owner can call this function
        require(msg.sender == owner); 
        _; 
    }

    // it will block the contract for the duration to not add any more people
    modifier onlyWhileOpen { 
        // only while the contract is open
        // require(now < openingTime + duration); 
        require(block.timestamp >= openingTime);
        _; 
    } 
    
    // struct Person
    struct Person {
        uint id;
        string firstName;
        string lastName;
    }

    // add person to mapping by only the owner of the contract
    function addPerson(string memory _firstName, string memory _lastName) public onlyWhileOpen {
        incrementNumPeople();
        // create a new person
        Person memory p = Person(numPeople, _firstName, _lastName); 
        // add the person to the mapping
        people[numPeople] = p; 
    } 

    // internal function to increment numPeople - not exposed to the outside world
    function incrementNumPeople() internal {
        numPeople++; 
    } 
}
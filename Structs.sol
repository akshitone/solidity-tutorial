pragma solidity >=0.6.0 <0.9.0;

contract Structs {
    // Array of Person structs
    Person[] public people; 

    // number of people in the array
    uint256 public numPeople; 

    // struct Person
    struct Person {
        string firstName;
        string lastName;
        uint age;
        string email;
    }

    // add a person to the array
    function addPerson(string memory _firstName, string memory _lastName, uint _age, string memory _email) public {
        // create a new Person struct
        Person memory p = Person(_firstName, _lastName, _age, _email); 
        // push the struct onto the array
        people.push(p); 
        // increment the number of people
        numPeople++;
    } 
}
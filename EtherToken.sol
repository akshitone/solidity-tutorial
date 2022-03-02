pragma solidity >=0.6.0 <0.9.0;

contract EtherToken {
    mapping(address => uint256) public balances; 

    // address wallet;

    function buyToken() public {
        balances[msg.sender] += 1;
    }
}
pragma solidity >=0.6.0 <0.9.0;

contract ERC20Token {
    string public name;

    mapping(address => uint256) public balances;

    function mint() public {
       balances[msg.sender]++;
    }

}

contract EtherToken {
    // ledger of balances
    mapping(address => uint256) public balances; 

    // address of the wallet - payable include transfer and send members
    address payable wallet; 

    // event for purchase contains buyer and amount
    event Purchase(address indexed _buyer, uint256 _amount); 

    // constructor contains the wallet address
    constructor(address payable _wallet) public {
        wallet = _wallet;
    } 

    // fallback function for ether transfer 
    function fallBack() external payable {
        buyToken();
    } 

    // called when the contract is called by the wallet 
    function buyToken() public payable {
        // add 1 token to the sender
        balances[msg.sender]++; 
        // transfer the value to the wallet
        wallet.transfer(msg.value); 
        // trigger the event
        emit Purchase(msg.sender, 1); 
    } 
}
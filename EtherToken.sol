pragma solidity >=0.6.0 <0.9.0;

contract ERC20Token {
    string public name;

    mapping(address => uint256) public balances;

    function mint() public {
       balances[tx.origin]++;
    }

}

contract EtherToken {
    // address of the wallet - payable include transfer and send members
    address payable wallet; 

    address public token;

    // constructor contains the wallet address
    constructor(address payable _wallet, address _token) public {
        wallet = _wallet;
        token = _token;
    } 

    // fallback function for ether transfer 
    function fallBack() external payable {
        buyToken();
    } 

    // called when the contract is called by the wallet 
    function buyToken() public payable {
        ERC20Token(address(token)).mint();
        // transfer the value to the wallet
        wallet.transfer(msg.value); 
    } 
}
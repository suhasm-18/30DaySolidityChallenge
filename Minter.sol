pragma solidity ^0.8.18;

contract Coins{
    address public minter;
    mapping(address => uint) public balance;
    
    event sent(address from , address to , uint amount);

    function Coin() public{
     minter = msg.sender;
    }

    function mint(address recevier , uint amount) public{
        if(msg.sender != minter) return;
        balance[recevier] += amount;
    }

    function send(address recevier , uint amount) public{
        if(balance[msg.sender]<amount) return;
        balance[msg.sender] -= amount;
         balance[recevier] += amount;
          }
}

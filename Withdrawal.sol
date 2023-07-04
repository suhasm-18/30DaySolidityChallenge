pragma solidity^ 0.8.0;


contract Withdrawal{
    uint max;
    address payable richest;

    constructor() payable{
        richest = payable(msg.sender);
        max = msg.value;
        richest.transfer(msg.value);
    }
 function sendEther() public payable{
        require(msg.value>max, "You are not the richest");
        richest=payable(msg.sender);
        max = msg.value;
        richest.transfer(msg.value);
    }
}

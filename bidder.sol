pragma solidity ^0.8.18;

contract Bidder{
    string public name;
    uint public BidAmount ;
    bool  public eligibility;
    uint constant minBid = 5000;

    function setName(string memory num)public{
        name = num;
    }

    function setBid(uint bid) public{
        BidAmount = bid;
    }

    function eligibledetermine() public{
        if(BidAmount>=minBid){
            eligibility = true;
        }
        else{
            eligibility = false;
        }
    }
}

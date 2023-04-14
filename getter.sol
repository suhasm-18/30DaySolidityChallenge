pragma solidity >=0.4.24;

contract greater {
    string public yourname;

    constructor() public {
        yourname = "world";
    }
    
    function setter(string memory name) public{
        yourname = name;
    }
    
    function hellow() public view returns(string memory){
        return yourname;
    }
}

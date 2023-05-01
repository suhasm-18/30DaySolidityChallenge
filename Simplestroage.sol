// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract SimpleStorage {
    uint public favorateNumber; 
    People public person = People({favorateNumber: 2, name: "Suhas"});
    struct People{
        uint256 favorateNumber;
        string name;
    }

    function store(uint256 _favorateNumber) public {
        favorateNumber = _favorateNumber;
        favorateNumber = favorateNumber+1;
    }

    function retrive() public view returns(uint256){
        return favorateNumber;
}
}
//0xd9145CCE52D386f254917e481eB44e9943F39138

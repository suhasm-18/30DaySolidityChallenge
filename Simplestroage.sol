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

//UPDATED VERSION


// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract SimpleStorage {
    uint public favorateNumber; 

    struct People {
        uint256 favorateNumber;
        string name;
    }
    People[] public people;

    function store(uint256 _favorateNumber) public {
        favorateNumber = _favorateNumber;
        favorateNumber = favorateNumber+1;
    }

    function retrive() public view returns(uint256){
        return favorateNumber;
}

    function addPeople(string memory _name, uint256 _favorateNumber) public{
      people.push(People(_favorateNumber,_name ));
    }
}

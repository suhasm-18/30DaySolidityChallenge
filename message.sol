pragma solidity ^0.4.17;

contract home{
    string public message;

    function Inbox(string   initiamessage) public{
        message=initiamessage;
    }

    function set(string newmessage)public{
        message=newmessage;
    }

    function get()public view returns(string){
        return message;
    }
}

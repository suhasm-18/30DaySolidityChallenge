pragma solidity >=0.4.24;

contract der{
    uint storedata;
    
    function set(uint x) public{
        storedata = x;
    }

    function get() public view returns(uint){
        return storedata;
    }

    function increment( uint n) public{
        storedata=storedata+n;
    }
    
     function decrement( uint n) public{
        storedata=storedata-n;
    }

}

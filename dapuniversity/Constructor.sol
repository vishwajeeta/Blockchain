pragma solidity ^0.4.24;
contract MyContract{
    string value;

    //default value
    constructor()public{
        value="mycontract";
    }
    function get() public view returns(string){
        return value;
    }
    function set(string _value) public{
        value=_value;
    }
}
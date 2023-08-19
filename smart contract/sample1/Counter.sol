// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;
contract Counter{
    uint public count;//unsigned integer
    string public name;
    
    /*constructor(){
         name="my Contract";
         count=1;
    }*/
    //let deployer set the values
    constructor(string memory _name,uint _initialCount){
        name=_name;
        count=_initialCount;
    }
    //function to increment the count
    function increment() public{
        count=count+1;// or count++;

    }
    function decrement()public returns(uint _decrease){
        count--;
        return count;
    }
    //function to only read information from blockchain and not modify at all.
    //function to return number
    function getCount()public view returns(uint){
        return count;
    }
    //function to return the name
    function getName() public view returns(string memory currentName){
        return name;
    }
    //function to change name
    function setName(string memory _newName)public returns(string memory newName){
        name=_newName;
        return name;
    }
}

//contracts>Counter.sol
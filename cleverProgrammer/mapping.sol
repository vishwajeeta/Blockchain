// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
contract mapping{
    mapping(uint => string)public myMap;
    function addValues(uint id,string memory value)public {
        myMap[id]=value;
    }
    function getValue(uint _id)public view returns(string memory){
        return myMap[_id];
    }
    //to delete the value of id
    function removeValue(uint _id)public {
        delete myMap[_id];
    }

}
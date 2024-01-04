// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
contract simpleStroage{
    struct people{
        string name;
        uint256 number;
    }
    people[] public People;
    mapping (string=>uint256) public nametofavno;

    function add(string memory data) public{
        People.push({name:"vishwa",number:6});
    }
}
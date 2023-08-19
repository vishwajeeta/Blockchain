// SPDX-License-Identifier: MIT
pragma solidity 0.9.0;
contract fundMe {
    //track of who send us the value
    mapping (address=>uint256) public addressToAmountFunded;
    //specifically payable with eth/ethereum
    function fund() public payable{
        //msg.sender is sender with function call
        //msg.value is howmuch they send
        addressToAmountFunded[msg.sender]+=msg.value;
        //set minimum transaction value
        //wt the eth -> USD conversion rate 

    }
}
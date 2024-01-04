// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
contract FundMe {
    
    mapping (address=>uint256) public addressToAmountFunded;
    function Fund( ) public payable {
        addressToAmountFunded[msg.sender] += msg.value;
        
    }
}
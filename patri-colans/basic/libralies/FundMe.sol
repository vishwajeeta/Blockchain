//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {PriceConverter} from "./PriceConverter.sol";

contract FundMe {
    //which ever variable has uint256 can use the above library 
    //all uint256 has access to library and functions
    using PriceConverter for uint256;

    uint256 public minimumUsd=5e18;
    address[] public funders;

    mapping (address funder =>uint256 amountFunded) addressToAmountFunded;

    function fund() public payable {

        //msg.value will pass itself as the first input parameter
        // value passed in msg.value.getConversionRate( ''''' )  will be second parameter for lib function then ++
        require(msg.value.getConversionRate()>=minimumUsd,"didn't send enough ETH");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender]=addressToAmountFunded[msg.sender]+msg.value;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {UUPSUpgradeable} from "@OpenZeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
contract BoxV2 is UUPSUpgradeable {
    uint256 internal number;

    function setNumber(uint256 _number)external{}
    function getNumber() external view returns(uint256){
        return number;
    }
    function version()external view returns(uint256){
        return 2;
    }
    //anybody can upgrade this
    function _authorizeUpgrade(address newImplementation) internal override {        }
}
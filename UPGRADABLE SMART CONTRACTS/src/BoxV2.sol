// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@OpenZeppelin/contracts-upgradeable@4.8.3/proxy/utils/UUPSUpgradeable.sol";
contract BoxV2 {
    uint256 internal number;

    function setNumber(uint256 _number)external{}
    function getNumber() external view returns(uint256){
        return number;
    }
    function version()external view returns(uint256){
        return 2;
    }
}
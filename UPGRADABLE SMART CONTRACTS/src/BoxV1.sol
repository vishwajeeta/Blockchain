// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {UUPSUpgradeable} from "@OpenZeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@OpenZeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

// this is used to do proxy upgradeable works

// storage is stored in the proxy, NOT the implementation

// proxy (borrowing funcs) -> implementation
// proxy -> deploy implementaion -> call some "initializer" function.
// initializer can be consider as a type of constructor()

contract BoxV1 is UUPSUpgradeable {
    uint256 internal number;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(){
        _disableInitializers();//dont let any initialization happen
    }
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
//Date 2025-01-28 [video->2(05:40)]
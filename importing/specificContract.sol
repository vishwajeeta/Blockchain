// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//only import particular contract for cost efficientness
import {SimpleStroage} from "./useContractByItself.sol";
contract StorageFactory {
    //get the address of the contract
    SimpleStroage public simpleStroage;

    //Deploy the contract
    function createSimpleStorageContract() {
        simpleStroage = new SimpleStroage();
        
    }
}
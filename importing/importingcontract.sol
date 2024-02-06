// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//it would import all the contracts of useContractByItself in the current one
// eg SimpleStroage and StorageFactory
import "./useContractByItself.sol";
contract StorageFactory {
    //get the address of the contract
    SimpleStroage public simpleStroage;

    //Deploy the contract
    function createSimpleStorageContract() {
        simpleStroage = new SimpleStroage();
        
    }
}
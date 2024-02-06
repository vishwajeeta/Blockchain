// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SimpleStroage {}

contract StorageFactory {
    //get the address of the contract
    SimpleStroage public simpleStroage;

    //Deploy the contract
    function createSimpleStorageContract() {
        simpleStroage = new SimpleStroage();
        
    }
}
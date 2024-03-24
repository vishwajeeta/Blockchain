// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import {StorageFactory} from "./sample1.sol";

//StorageFactory is short of manager
contract StorageFactory {
    SimpleStroage[] public listOfSimpleStroageContract;

    
    function createSimpleStorageContract() {
        simpleStroage newSimpleStorageContract= new SimpleStroage();
        listOfSimpleStroageContract.push(newSimpleStorageContract);
    }
}
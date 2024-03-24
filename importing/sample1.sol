// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//StorageFactory is short of manager
contract StorageFactory {
    SimpleStroage[] public listOfSimpleStroageContract;

    
    function createSimpleStorageContract() {
        simpleStroage newSimpleStorageContract= new SimpleStroage();
        listOfSimpleStroageContract.push(newSimpleStorageContract);
    }
    function sfStorage(uint256 _simpleStorageIndex,uint256 _newSimpleStorageNumber) public {
        //to interact with contract we need:-
        // Address
        //ABI -Application Binary Interface
    }
}
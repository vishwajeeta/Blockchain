// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//only import particular contract for cost efficientness
import {SimpleStroage} from "./useContractByItself.sol";
contract StorageFactory {
    //get the address of the contract
    //sore the list of simple storage contract
    SimpleStroage[] public listOfSimpleStroageContract;

    //Deploy the contract
    function createSimpleStorageContract() {
        //storing it in a variable newSimpleStorageContract
        simpleStroage newSimpleStorageContract= new SimpleStroage();
        listOfSimpleStroageContract.push(newSimpleStorageContract);
    }
}
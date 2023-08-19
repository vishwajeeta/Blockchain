//SPDX Licence_Identifier: MIL
pragma solidity 0.6.0;
//deploy a contract from a contract
import "./SimpleStorage.sol";
contract StorageFactory {
    function createSimpleStorage() public {
        SimpleStorage[] public simpleStorageArray;
        /*
        create an object type of type 'SimpleStorage contract' name it simpleStorage.
        it would gona be 'new' simple storage contract
        as we create simpleStorate contract it will deploy/add/create it to simple storage array
        */
        
        SimpleStorage simpleStorage= new SimpleStorage();
        simpleStorageArray.push(simpleStorage);//if we try to access this 'index'array we'll get 'Address'
    }
    
    //calling functions form imported contract
    function sfStore(uint256 _simpleStorageIndex,uint256 _simpleStorageNumber)public{
        //address of the contract to interact
        //ABI
        //grab address of contract inside simpleStorageArray at index_simpleStorageIndex
        SimpleStorage simpleStorage=SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        simpleStorage.store(_simpleStorageNumber);
    }
    //retruve the data from imported smart-contract
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        /*
        SimpleStorage simpleStorage=SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        return simpleStorage.retrieve();
        */
        //or
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
    }
}
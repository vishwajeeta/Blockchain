// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
contract control{
    uint256 myNumber=5;
    function checkNumber()public returns(bool){
        if(myNumber<5)
    {
        return false

    }else if(myNumber ==5)
    {
        return true
    }else{
        return false
    }
    
    }
    
}
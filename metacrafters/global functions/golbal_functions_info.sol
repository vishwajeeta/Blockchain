//SPDX-License-Identifier:MIT
pragma solidity 0.8.0;
contract global_functions{

}
/**
there 4 imp global functions
1. Address
2. Block
3. Transaction
4. Message
 */
 /**
 1.Address
 *balance
 [
 address myContract
 myContract.balance;
 ]

 *transfer()
 [
    //sends the given amount of wei from the current account to the address mentioned
    myContract.transfer(uint265 x);
 ]
 send()
 [
    //sends given amount of wei from current Acc to the address mentioned
    myContract.send(uint265 x);
 ]
 //local level functions
 call(),staticcall()//works as the similar manner as transfer || send 
 delegatecall()
 [
    //if a and b makes delegatecall to c the mesg.sender in deligate call will be a not b
    //bites as input and returns types as boolean and bytes datatype
 ]
  */

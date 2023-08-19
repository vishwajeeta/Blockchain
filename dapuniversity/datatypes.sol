pragma solidity 0.5.1;
contract mycontract{
    string public stringvalue="mystring";
    bool public myBool=true;
    //it can be negative
    int public myint=-1;
    //it can't be negative
    uint public myuint=1;
    //spectfy bytes
    uint8 public myuint8=8;
    //default
    uint256 public myuint256=99999;
}
//SPDX-License-Identifier:MIT
pragma solidity 0.8.0;
contract functionsolidity {
    address payable public   owner;
    constructor(){
        owner = payable(msg.sender);
    }
    modifier onlyOwner{
        require(owner==msg.sender,"only owner of account can perform operations");
        _;
    }
    function get()public view onlyOwner returns(address){
        return owner;
    }
     
    function pay(address payment) external payable returns(address){

    }
    function getBalance () external view returns(uint){
        return address(this).balance;
    }
    function calculate(uint256 _a,uint256 _b) pure public returns(uint256){
        uint256 a=_a;
        uint256 b=_b;
        return a+b;
    }
}
/*
public
private
internal
external

Function types
view
pure
payable
fallback
*/
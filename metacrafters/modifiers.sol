/**
modifier is a bit of code that determine if a function is applyes to will execute or not
Note:- best practice to all the modifier to declare for all the functions we declare.
 */
pragma solidity 0.8.0;
contract greate {
    uint a;
    address owner;

constructor ( )  {
    owner=msg.sender;
}
modifier onlyOwner{
    require(owner==msg.sender,"only owner can access");
    _;
}
function set(uint _a)public onlyOwner{
    a=_a;
}
function get()public view onlyOwner returns(uint256){
    return a;
}
}
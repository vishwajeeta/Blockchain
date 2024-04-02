pragma solidity ^0.8.9;

contract vishwa{

uint256 afterTime=1712033431;
string name;

modifier onlyAfterLimit(){
require(block.timestamp>=afterTime);
_;
}

//only after fulfilling timeline requirements
function updateName(string memory _name)public onlyAfterLimit{
name=_name;
}

}
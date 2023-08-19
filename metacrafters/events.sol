//SPDX-License-Identifier:MIT
pragma solidity 0.8.0;
contract eventsHandling {
    event first(address indexed sender, string name,uint256 value);
    event second();
    
    function test() public {
        emit first(msg.sender,"vishwa",5);
        emit first(msg.sender,"golu",7);
        emit second();
    }

    //searching [indexing events using indexed keyword]
    //we can add upto indexes in an event
    event transaction( address indexed msg.sender, address indexed to,uint amount)
    function deposit(bytes32 _id) public payable {

        emit transaction(msg.sender,_id,msg.amount)
    }
}
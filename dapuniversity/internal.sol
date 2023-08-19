pragma solidity 0.5.1;

//public['can be called form public interface of the smartContract']
//internal ['won't be exposed outside the smartcontract']
contract MyContract{

    uint256 public peopleCount=0;
    //uint is a-key(id) Perons is value('record')
     mapping(uint=>Person) public people;
    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName,string memory _lastName)public{
        incrementCount();
        people[peopleCount]=Person(peopleCount,_firstName,_lastName)
        
    }
    function incrementCount() internal {
        peopleCount +=1;
    }
}
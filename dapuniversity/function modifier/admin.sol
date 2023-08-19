//only owner of smart contract can do that
//account which deployed the smart contract can run
pragma solidity 0.5.1;

//public['can be called form public interface of the smartContract']
//internal ['won't be exposed outside the smartcontract']
contract MyContract{

    uint256 public peopleCount=0;
    //uint is a-key(id) Perons is value('record')
     mapping(uint=>Person) public people;

    address owner;
    //create a modifier
    modifier onlyOwner(){
        //solidity has global keyword called msg
        //msg meta-data that passed in
        //msg.sender tell us the address who called the function
        //msg.sender == owner
        //if require is true. else throw an error
        requier(msg.sender == owner);
        _;
    }

    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }
    //set the owner
     constructor()public{
        owner=msg.sender;
    }
    //only owner can call this function
    //its just formating
    /*  function addPerson(string memory _firstName,string memory _lastName)public onlyOwner{
        incrementCount();
        people[peopleCount]=Person(peopleCount,_firstName,_lastName)
        
    }
   */
    function addPerson(
        string memory _firstName,
        string memory _lastName
        )
        public 
        onlyOwner 
        {
        incrementCount();
        people[peopleCount]=Person(peopleCount,_firstName,_lastName)
        
    }
    function incrementCount() internal {
        peopleCount +=1;
    }
}
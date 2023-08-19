//work with time in solidity
//compare time
//only owner of smart contract can do that
//account which deployed the smart contract can run
pragma solidity 0.5.1;

//public['can be called form public interface of the smartContract']
//internal ['won't be exposed outside the smartcontract']
contract MyContract{

    uint256 public peopleCount=0;
    //uint is a-key(id) Perons is value('record')
     mapping(uint=>Person) public people;
     //solidity uses eppic time [uses second's]
    uint256 openingTime=1544669573;
    //create a modifier
    modifier onlyWhileOpen(){
        //solidity has global keyword called block.timestamp
        //current block( global ) time stamp
        //if require is true. else throw an error
        //comparing current-time and selected time
        requier(block.timestamp >= openingTime);
        _;
    }

    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }
    //only owner can call this function
    //its just formating
    /*  function addPerson(string memory _firstName,string memory _lastName)public onlyOwner{
        incrementCount();
        people[peopleCount]=Person(peopleCount,_firstName,_lastName)
        
    }
   */
   //after the opening time we can call this function if not
    function addPerson(
        string memory _firstName,
        string memory _lastName
        )
        public 
        onlyWhileOpen 
        {
        incrementCount();
        people[peopleCount]=Person(peopleCount,_firstName,_lastName)
        
    }
    function incrementCount() internal {
        peopleCount +=1;
    }
}
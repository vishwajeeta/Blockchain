//pragma solidity >=0.6.0 <0.9.0;
pragma solidity ^0.6.0;
//similar to class in java
contract SimpleStrorage {
    uint256 public favoriteNumber;

    //defining a struct for storing more than one person's data
    struct People{
        uint256 favoriteNumber;
        string name;
    }
    //dynamic array:an array that can change size
    //People[1] public people;
    //Array:A way of storing a list of an object or type
    People[] public people;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber=_favoriteNumber;
        
    }
    //view= read some state of blockchain
    //pure = for calculation
    function retrieve()public view returns(uint256){
        return favoriteNumber;
    }

    //adding to an array
    //two way of storing information
    // memory:data will only be stored during the execution of the function
    //storage :that data will be even after function executes
    //string are actually an object:An array of bytes
    function addPerson(string memory _name,uint256 _favoriteNumber )public{
        people.push(People({favoriteNumber:_favoriteNumber,name:_name}));
        //or people.push(People(_favoriteNumber,_name));
    }
    
}
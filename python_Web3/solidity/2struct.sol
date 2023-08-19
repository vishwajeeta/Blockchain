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
    People public person=People({favoriteNumber:2,name:'vishwa'});
    function store(uint256 _favoriteNumber) public {
        favoriteNumber=_favoriteNumber;
        
    }
    //view= read some state of blockchain
    //pure = for calculation
    function retrieve()public view returns(uint256){
        return favoriteNumber;
    }
    
}
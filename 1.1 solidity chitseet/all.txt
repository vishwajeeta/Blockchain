pragma solidity ^0.8.0;

uint vishwa;//unsigned integer [it can only store positive numbers 1,2,3,,9. NO negative number -1,-2,-4]
uint public vishwa1;//public is a modifyer [make this public so we can fetch the value later],so compiler create's a function called count to show data of variable
string public name="my name"; //string datatype is used and it's public [any budy can read]

//constructor function
//constructor that get called when ever we put contract on the blockchain
//it runs only once,initialise the smart contract with certain value
constructor(string memory _name,uint _initialCount){
        name=_name;
        count=_initialCount;
    }


//create function to increment the count
function increment()public{
    count=count+1;
    //or count++;
        
    }
//more efficient

    function decrement()public returns(uint _decrease){
        count--;
        return count;
    }

//function to only read information from blockchain and not modify at all.
//function to return number
    function getCount()public view returns(uint){
        return count;
    }
    //function to return the name
    function getName() public view returns(string memory currentName){
        return name;
    }
    
    //function to change name
    function setName(string memory _newName)public returns(string memory newName){
        name=_newName;
        return name;
    }



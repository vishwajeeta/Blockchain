uint public count=1;
string public name="gol";

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



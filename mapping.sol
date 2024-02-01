//if we search for name we will get faverout number
mapping(string => uint256) public nameToFavNumber;

function addPeople(string memory _name,uint256 _number) public{
    //list[key]=value;pair
    nameToFavNumber[_name]=_number;
    
}

//constructor function
//constructor that get called when ever we put contract on the blockchain
//it runs only once,initialise the smart contract with certain value
constructor(string memory _name,uint _initialCount){
        name=_name;
        count=_initialCount;
    }

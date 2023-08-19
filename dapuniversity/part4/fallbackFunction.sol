pragma solidity 0.5.0;
//pragm
//pragma solidity version;
//pragm-ex
//pragma solidity >=0.5.0 <0.8.0;
//con
contract MyContract {
    //track person balance
    //map
    mapping (address=>uint256)public balances;
    //keep track ot wallet
    //inorder to accept ether by adding modifier [payable] in 0.5.0;
    address payable wallet;
    //set the waller
    //inorder to accept ether by adding modifier [payable] in 0.5.0;
    //const
    constructor (address payable _wallet) public {
        wallet=_wallet;
        
    }

    //external can only be called outside
    function()external payable{
        buyToken();
    }

    //write function that execpt ether/send ether
    //inorder to accept ether by adding modifier [payable] in 0.5.0;
    function buyToken()public payable{
        //buy a token
        balances[msg.sender]+=1;
        //send ether to the wallet
        //to know the 'value' which is sent in
        wallet.transfer(msg.value);//how many ether is sent by this function
    }
}

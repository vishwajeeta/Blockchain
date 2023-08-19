pragma solidity 0.5.1;
contract mycontract{
    enum State{Waiting,Ready,Active}
    State public state;
    //default state
    constructor()public{
        state=State.Waiting;
    }
    function active()public{
        state=State.Active;
    }
    //check whether state is acitve
    function isActive() public view returns(bool){
        return state==State.Active;
    }
}
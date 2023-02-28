pragma solidity ^0.8.0;

contract Tech4dev{
    bool public paused; //state variable used to state true or false
    uint public count; //state variable used to increment and decrement

    function SetPaused(bool x) public{
        paused = x;  //the state of the paused is changed. On default it is faulse, otherwise stated
        //to true
    }

    function increase() public{
        count += 1;
        //can also be written as count ++; or count = count + 1;

        require(!paused);
       //this means that if the contract is not paused (false), this code should execute
        //but if the contract is paused (true) then this code should pause.
    }
    function decrease() public{
        count -= 1;
        //can also be written as count --; or count = count - 1;

        require(!paused);
        //this means that if the contract is not paused (false), this code should execute
        //but if the contract is paused (true) then this code should pause.

    }
}

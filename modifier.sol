// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Tech4dev{
    bool public paused; //state variable used to state true or false
    uint public count; //state variable used to increment and decrement

    function SetPaused(bool x) public{
        paused = x;  //the state of the paused is changed. On default it is faulse, otherwise stated
        //to true
    }
    //to avoid repeatition of code, the function Modifier is used
    modifier notPaused(){
        require (!paused); 
        _; //this means execute the rest of the code
        //NB: MUST add the name of your modifier to your function
    }

    function increase() public notPaused{
        count += 1;
        //can also be written as count ++; or count = count + 1;
    }
    function decrease() public notPaused{
        count -= 1;
        //can also be written as count --; or count = count - 1;

    }
}

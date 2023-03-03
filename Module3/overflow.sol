pragma solidity ^0.8.0;

contract tech4dev{
    uint public zero = 0;
    uint public max = 2**256 -1;

    function zerominus1() public{
        zero = zero -1;
    }//to check underflow

    function maxplus() public{
        max = max +1;
    }//to check overflow
}

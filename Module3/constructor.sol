// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract tech4dev{
    address public owner;
    string public name;
    string public symbol;
    uint public decimal;

    //to declare constructor
    constructor(){
        owner = msg.sender; //the address of the person deploying the contract is being set as owner
        name = "Noble Token";
        symbol = "NBT";
        decimal = 18;
}
}
//NB; constructor is declare similarly to struct but it is always with equat to sign =

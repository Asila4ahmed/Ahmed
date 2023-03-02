// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Tech4dev{
    //payable simply means granting an address the ability to sen or receive ethereum

    address payable public owner;
    //NB; payable is only place before public and not after public

    //Next create a constructor
    constructor(){
        owner = payable(msg.sender); //must declare msg.sender as payable

    }
    //Next create a function that will enable the deposit of ethereum into the contract
    function deposit() public payable{

    }
    //Next create a getbalance function that will allow the checking of the balance
    function GetBalance() public view returns(uint){
        return address(this).balance;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract tech4dev{
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }
    function deposit() public payable{

    }
    function getbalance() public view returns(uint){
        return address(this).balance;    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Tech4dev{
    //fallback
    fallback() external payable{}
    //fallback does not have a name and it is empty

    //receive
    receive() external payable{}

    //NB: external means only any contract that inherits this contract call the function

} 

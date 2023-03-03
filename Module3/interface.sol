// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
    //Interface
contract datacontract{
    function getAge() external pure returns(uint){
        return 25;
    }
    function getHeight() external pure returns(uint){
        return 120;
    }
    function getName() external pure returns(string memory){
         return "Asila";
    }
    function getCar() external pure returns(string memory){
        return "Lexus";
    }
}

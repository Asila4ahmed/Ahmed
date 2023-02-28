// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract tech4dev{
    mapping(address => uint) public balance;
    mapping(address => bool) public inserted;
//you cannot save more than one thing in a mapping
    address[] public keys;

//create function to insert address and amount
    function set(address _x, uint amount) public {

        //update the balance mapping with balance and amount
        balance[_x] = amount;

    if(!inserted[_x]){
        inserted[_x] = true;
        keys.push(_x);
    }
    
    }
    function getsize() public view returns(uint){
        return keys.length;
    }
    

}

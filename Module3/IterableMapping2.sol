// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Tech4Dev{
    //create a mapping that will carry balances and inserted
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;

    //create an array called keys
    address[] public keys;

    //create a function to insert adress and amount
    function set(address _x, uint amount) public{
        //update the balance mapping with address and amount
        balances[_x] = amount;

        //NB: Mpping carries only one information at a time
       if(!inserted[_x]){
           inserted[_x] = true; //if inserted, the bool in line 7 is set to true otherwise, update
           //the status of the address to true
           //then push the address into the array 
           keys.push(_x);
       }
    } //create a function toget the size of the array
     function GetSize() public view returns(uint){
         //first return the array.length
         return keys.length;
     }
     //create a function to get the first index to capture the first element of the array
     function FirstIntex() public view returns(uint){
         return balances[keys[0]];
     }
     function LastIndex() public view returns(uint){
        return balances[keys[keys.length -1]];
        //array.length -1; refers to the last element in an array

        //To get the last element in an array
        //1. create a function to get the length of the array
        //2. create a function that carries array lenght -1
     }
     //function to check the balance of any index
     function AnyIndex(uint _x) public view returns(uint){
         return balances[keys[_x]];

     }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
/* 1. Declare your state variable
2. create your constructor
3. create receive fall back function
3. create getbalance function
4. create withdraw function */
contract EtherWallet{
    //declare the address
    address payable public owner;

    //create constructor
    constructor(){
        owner = payable (msg.sender);

    }//create receive fallback function
    receive() external payable{}

    //create GetBalance function
    function GetBalance() public view returns(uint){
        return address(this).balance;
    }

//create withdraw function
    function WithdrawByOwner(uint _amount) public{
        //must add a require statement
        require(msg.sender == owner, "Thief! you are not the owner");

       payable(msg.sender).transfer(_amount);
    }
}

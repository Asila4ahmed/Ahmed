// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//ownable in solidity;- to change the owner of a contract
contract tech4dev{
    address public owner;

    constructor() public{
        owner = msg.sender;

    }
    //to add a modifier
    modifier onlyOwner(){
    require(msg.sender == owner, "not the owner");
    _;
    //always have '_;' at the end of your modifier
    }
    function SetOwner(address _newOwner) public onlyOwner{
        owner = _newOwner;
    }
    function onlyOwnerCanCall() public onlyOwner{

    }
    function anybodyCanCall() public{

    }


}

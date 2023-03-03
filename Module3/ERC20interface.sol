// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 interface IERC20{
     //to capture total supply
     function totalSupply() external view returns(uint);

     //to capture balance
     function BalanceOf(address account) external view returns(uint);

     //to capture transfer, allowance and approve
     //transfer brings about the ability of one to tranfer funds from one's wallet to another
     function transfer(address receipient, uint amount) external returns(bool);
     //allowance allows the owner of a wallet to give permission for someone else to spend 
     // a specific amount from their wallet 
     function allowance(address owner, address spender) external view returns(uint);
     //approve allows one to spend from their wallet
     function approve(address spender, uint amount) external returns(bool);

     //transfer from allows the transfer from someone else wallet to another
     function transferfrom(address sender, address receipient, uint amount) external returns(bool);
     //that's all for the functions
     
     //Now to declare events
     //must use the key work "indexed" for address
     //the event is declared to let us know when the transfer and approval function get called
     event Transfer(address indexed from, address indexed to, uint amount);

     event Approval(address indexed owner, address indexed spender, uint amount);

     //NB; Every function in your interface has the virtual keyword by default

 }

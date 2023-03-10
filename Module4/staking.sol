pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
//containing the ERC20 contract

contract staking is ERC20{//ERC20 from openzeppelin

mapping(address => uint) public staked; //mapping address with uint
mapping(address => uint ) private stakedFromTS; //TS means timestamp, this hold the time 
//function is private so it cannot be called outside the contract

constructor() ERC20("Dera Token","DTK"){
_mint(msg.sender, 10**18); //remember 10**18wei is equivalent to 1 ether
}

function stake(uint amount) public {//taking how much wants to be stakedyhoo
require(amount >0, "The amount you are trying to stake is less than 1");
require(balanceOf(msg.sender) >= amount, "You do not have up to that amount");

_transfer(msg.sender, address(this), amount);//local variable
//address(this) is the address of the contract
//the function is coming from the openzeppelin that was imported
//transfering from the msg.sender to the contract
if(staked[msg.sender] > 0){
claim();
}

stakedFromTS[msg.sender] = block.timestamp;//updating the time the function was called
staked[msg.sender] = staked[msg.sender] + amount;//add amount to the stake address of the msg.sender
}

function unstake(uint amount) public {//to unstake
require(amount >0, "amount <=0"); //cannot stake zero ether
require(staked[msg.sender] > 0, "You did not stake with us");
_transfer(address(this), msg.sender, amount); //transfering from the contract back to msg.sender

stakedFromTS[msg.sender] = block.timestamp; //updating the time the person called for the unstake
staked[msg.sender] = staked[msg.sender] - amount; //deducting the token from the account of msg.sender
//staked[msg.sender] -= amount;
}

function claim() public { //to claim reward
require(staked[msg.sender] > 0, "You did not stake with us");
uint secondsStaked = block.timestamp - stakedFromTS[msg.sender];
//minusing the time the stake started from now
//= means saving what is after it into the variable before it
uint rewards = staked[msg.sender] * secondsStaked / 3.154e7; //determins the amount of reward
//3.154e7 is the no. of seconds in a year

_mint(msg.sender,rewards); //minting to give the msg.sender stake reward i.e new token into the staker account
stakedFromTS[msg.sender] = block.timestamp; //updating the time for claim
} 
}




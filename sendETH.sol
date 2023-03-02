// SPDX-License-Identifier: MIT
pragma solidity^0.8.0;
     //Send ETH
     //ETH can be sent using three methods
     //1. transfer method
     //2. send method
     //3. call method
contract TransferEther{
    receive() external payable{}
       //1. transfer method
    function SendViaTransfer(address payable _to /*address to send to*/) public payable{
      
      _to.transfer(msg.value); //append the transfer to the receiver 
      //msg.value is the value/amount being sent
    }
    //2. Send method
    function SendViaSend(address payable _to) public payable{
       bool sent = _to.send(msg.value);
       require(sent, "failed to send ETH");
       //It is necessary to add a requirement 
    }
    //3. Callmethod
    function SendViaCall(address payable _to) public payable{
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        //bytes is used here instead of string in other to save gas
        //NB: "bytes memory data" does not have to be explicitly declared
        require(sent, "failed to send ETH");
    }
} 

    contract ReceiveEther{
        receive() external payable{
            //call back function needed to be bale to receive ethereum
        } 
        function GetBalance() public view returns(uint){
            return address(this).balance;
        }
    }

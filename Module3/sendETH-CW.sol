// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReceiveEther{
    receive() external payable{}

    function GetBalance() public view returns(uint){
        return address(this).balance; //getBalance function
    }

}

contract TransferEther{
    receive() external payable{}

    function TransferEth(address payable _to) public payable{
        _to.transfer(msg.value);
    }
    function SendETH(address payable _to) public payable{
        bool sent = _to.send(msg.value);
        require(sent, "faile to send ETH");
    }
    function CallETH(address payable _to) public payable{
      (bool sent,) = _to.call{value: msg.value}("");
      require(sent, "failed to send ETH");

    }
}

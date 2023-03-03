pragma solidity ^0.8.13;

contract EtherGame{
    uint public targetAmount = 3 ether;
    uint public balance; //state variable to hold the balance of the contract
    //do not use address(this).balance i.e avoid the use of address to update tha balance of the contact
    //so that the contract cannot be hacked using the self destruct method
    //address(this).balance makes it vulnerable to attack
    address public winner;

    function deposite() public payable{
        require(msg.value == 1 ether, "you can only send 1 ether");

        balance += msg.value; //this will update the state variable balance 
        //can also be written as balance = balance + msg.value

        require(balance <= targetAmount, "Game is over");

        if(balance == targetAmount){
            winner = msg.sender;
        }
    }
    function claimReward() public{
        require(msg.sender == winner,"you are not the winner");

        (bool sent,) = msg.sender.call{value: balance}("");
        require(sent, "failed to send ether");
    }
}

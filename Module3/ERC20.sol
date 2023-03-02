// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 
 //creating an ERC20 token usimg open zeppelin library
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

   contract Tech4Dev is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("Noble Token", "NBT") {
        _mint(msg.sender, 10000 * 10**18); //mint means to create
         }
 
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

 
    
 
   
}

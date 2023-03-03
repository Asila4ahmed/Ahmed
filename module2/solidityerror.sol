pragma solidity^0.8.0;
//Error in solidity: Are captured using three methods
//1. Require 2. Rvert 3. Assert
contract tech4dev{//1. Require

     function Asila(uint _x) public pure{
         require(_x < 10, "It is above 10");
         // , here sort of represent else
         //in this case, if _x is less than 10, the it is fine otherwise, throw an error
         //this is seen at the bottom where transaction takes place
     }


}

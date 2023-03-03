pragma solidity ^0.8.0;

contract tech4dev{
      function Asila(uint _x) public pure returns(string memory){
   /*  if(_x < 10){
         return "it is less than 10";
     }else{
         return "it is above 10";
     }*/
      
//instead of the long if and else statement, Tenary Operators are used
    //Tenary Operators
  return _x < 10 ? "it is less than 10" : "it is above 10";
  // ? represent what the code should do if it meets the condition, while : represent else
}

function classwork(uint _x) public pure returns(string memory){
    return _x < 20 ? "It is less than 20" : "It is above 20";
}
}

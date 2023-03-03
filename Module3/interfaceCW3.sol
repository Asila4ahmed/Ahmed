// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//class work continuation from interfaceCW2.sol

interface icount{
    //since count, which is a state variable is to be declared as function 
    //NB: interface does not have curly braces as it does not allow the expression of a function
    function count() external view returns(uint);
    function increaseby1() external;
    function increaseby2and1() external;
    function decreaseby1() external;
    function decreaseby2() external;
}
contract tech4dev{
    //to declare the address
        address private constant classwork= 0xb27A31f1b0AF2946B7F582768f03239b1eC07c2c;
      
      function increaseby1() public{
      //nameofinterface(address).functionname;
        icount(classwork).increaseby1();
      }
      function increaseby2and1() public{
          icount(classwork).increaseby2and1();
      }
      function decreaseby1() public{
          icount(classwork).decreaseby1();
      }
      function decreaseby2() public{
          icount(classwork).decreaseby2();
      }

      function count() public view returns(uint){
          return icount(classwork).count();
      } 
}

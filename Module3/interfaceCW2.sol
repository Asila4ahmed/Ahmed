// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
/*Class Work2
Create a contract that has the following functions.
1. Function to increase count by 1
2. Function to increase count by 2 and then increase by 1
3. Function to decrease count by 1
4. Function to decrease count by 2.
Then declare an interface in another contract where you can relate with the above contract*/
contract Tech4Dev{
    uint public count;
    function increaseby1() public{
     count +=1;
    }
    function increaseby2and1() public{
        count +=2;
        count +=1;
    }
    function decreaseby1() public{
        count -=1;
    }
    function decreaseby2() public{
        count -=2;
    }

}


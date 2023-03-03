pragma solidity ^0.5.0;

contract tech4dev{
    function Aisha(uint _x) public pure returns(string memory){
        if(_x < 0){
            return "it is less than 10";
        }else if(_x < 20){
            return "it is less than 20";
        }else{
            return "it is above 20";
        }
    }
}

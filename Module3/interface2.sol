// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
    //define interface with function without implementation
    //declare as external type
    //NB; Interface is declared by the key word intrface and the name of the interface and 
    //the name of sn interface must start with I

    interface Isila{
        function getAge() external pure returns(uint);
        //NB; The functions in an interface are terminated by ";"
        function getHeight() external pure returns(uint);
        function getName() external pure returns(string memory);
        function getCar() external pure returns(string memory);
    }
    //declare a contract that will interact with the interface declared above
    contract MainContract{
        //declare a state variable that will carry the address of the previous contract in file
        //interface.sol
        address private constant Datacontractaddress = 0xd9145CCE52D386f254917e481eB44e9943F39138;
        //the address is of the previous contract after being deployed
        //the state variable is declared private so that it cant be called by anyone else
        //the variable is declared constant to save gas

        //now implementiong the functions
        function getAge() external pure returns(uint){
        //to return, must have;
        //name of interface, parenthesis which carries the state variable in which the address of the other (previous) contract was saved
        //followed by full stop(.), then the name of that function
        //eg name-of-interface(state variable of the previous contract address).name-of-function();
        //NB; must always add a parenthesis to a funtion
        return Isila(Datacontractaddress).getAge();
        }
        function getHeight() external pure returns(uint){
            return Isila(Datacontractaddress).getHeight();
        }
        function getName() external pure returns(string memory){
            return Isila(Datacontractaddress).getName();
        }
        function getCar() external pure returns(string memory){
            return Isila(Datacontractaddress).getCar();
        }

    }

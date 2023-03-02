// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Tech4dev{

    struct ToDoList{
        string name;
        bool status;
    }
    ToDoList[] public Tech;

    function insert(string memory _name) public{
      Tech.push( ToDoList(_name,false) );
    }
    function update(uint index, string memory _name) public{

        Tech[index].name = _name;
    }
}

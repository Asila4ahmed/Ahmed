// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//To do LIst
contract Tech4Dev{
    //create struct
    struct ToDo{
        string title;
        bool completed;
}
//create an array struct
        ToDo[] public Tech;

        function insert(string memory _title) public{
        Tech.push( ToDo(_title, false) );
        }

        //to update an array in this case, you need the information about that array into the ()
        //of the function
        function Update(uint index, string memory _title) public{

       Tech[index].title = _title;   //name of array, the index and append it with title which is 
       //in the struct
        }
    }

pragma solidity ^0.8.0;

contract time{
    function second() public view returns(uint){
        return block.timestamp;
    //block.timestamp is the tie for now which is in seconds        
    //this is for one second. to add more seconds, eg 20 seconds, add + 20 seconds
    //i.e return block.timestamp + 20 seconds;
    }
    function secondz() public view returns(uint){
        return block.timestamp + 60 seconds;
    }
    function minute() public view returns(uint){
        return block.timestamp + 5 minutes;
    }

    function day() public view returns(uint){
        return block.timestamp + 2 days;
        //this will return one day
        //can also add more days if you want. i.e return block.timestamp + 2 days or 3 days etc.
    }

    function hour() public view returns(uint){
        return block.timestamp + 3 hours;
        //can return as many hours as you would like
    }
}

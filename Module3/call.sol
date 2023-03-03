pragma solidity ^0.8.0;

contract Receiver{
    fallback() external payable{}

        string public message;
        uint public num;

        function victoria(string memory _message, uint _num) public payable returns(bool){
            message = _message;
            num = _num;
            return true;

        }
    
}

contract Caller{
    function Mike(address _addr) public payable{
        _addr.call{value: msg.value}(abi.encodeWithSignature( "Victoria(string, uint" , "Micheal has a laptop",123) ); 
        // important when working with call or deligate function

    }
}

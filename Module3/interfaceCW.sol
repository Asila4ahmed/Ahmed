// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//class work

contract Tech4Dev{
    function getName() external pure returns(string memory){
        return "Aisha, Blessing, Tamitayo, Victoria, Halimat, Arrafat, Queen, Ifure";
    }
    function getSex() external pure returns(string memory){
        return "female";
    }
    function getCountry() external pure returns(string memory){
        return "Nigeria";
    }
}
interface iclasswork{
    function getName() external pure returns(string memory);
    function getSex() external pure returns(string memory);
    function getCountry() external pure returns(string memory);

}
    contract MainContract{
    address private constant Datacontractaddress = 0x7EF2e0048f5bAeDe046f6BF797943daF4ED8CB47;
    function getName() external pure returns(string memory){
        return iclasswork(Datacontractaddress).getName();
    }
    function getSex() external pure returns(string memory){
        return iclasswork(Datacontractaddress).getSex();
    }
    function getCountry() external pure returns(string memory){
        return iclasswork(Datacontractaddress).getCountry();
    }
}

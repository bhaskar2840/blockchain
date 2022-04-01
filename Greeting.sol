//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Greet{

    string public name;
    string hello = "hello";

    constructor(string memory intial_name){
        name=intial_name;

    }

    function setName(string memory newName) public {
        name=newName;
    }

    function greet() public view returns(string memory){
        return string(abi.encodePacked(hello,' ',name);
    }


}

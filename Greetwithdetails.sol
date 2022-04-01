//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Greet{


struct Person{
    string name;
    uint time;
    uint hash;}

string hello = "hello";

// generated random hash
function hash() public view returns(uint){
    return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp)));
}

mapping(uint => Person)  public data;

function setData(uint _id,string memory _name) public {
    data[_id]=Person(_name,block.timestamp,hash());
} 


  
    function greet(uint _id) public view returns(string memory){
        return string(abi.encodePacked(hello,' ',data[_id].name,' ',data[_id].time,' ',data[_id].hash)) ;
    }


}

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ludo{

address public manager;
address payable [] public  participants;

// assign the address of the contract deployed to the manager
constructor(){
    manager=msg.sender;
}

receive() payable external{
    require(msg.value==1 ether);
    participants.push(payable(msg.sender));
}

// get the balance in the wallet of the manager.
function getbalance() public view returns(uint) {
    require(msg.sender==manager);
    return address(this).balance;
}


// generated random hash
function hash() public view returns(uint){
    return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp)));
}


// get the winner
function setWinner() public {
    require(msg.sender==manager);
    require(participants.length==4); // only 4 participants can be there.
    uint a = hash();
    uint index = a % participants.length;
    address payable winner=participants[index];
    winner.transfer(getbalance());
    participants=new address payable[](0);
}


}

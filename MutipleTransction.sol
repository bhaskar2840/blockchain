//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiTransaction{

address public manager;
address payable [] public  participants;
uint  [] public amount;

constructor(){
    manager=msg.sender;
}

receive() payable external{
    
    participants.push(payable(msg.sender));
    amount.push(msg.value);
}

function getbalance() public view returns(uint) {
    return address(this).balance;
}


// transfer ether to this address.
address payable user = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

function sendEther() public {
    user.transfer(getbalance());
}

function showDetails(address _person) public view returns(uint total_amount,uint no_of_transactions){
    uint i =0;
    uint count =0;
    uint total_value=0;
    uint n = participants.length;

    while(i<n){
        if(participants[i]==_person){
            count+=1;
            total_value+=amount[i];
        }


        i+=1;
    }
    return (total_value,count);
}
  




}

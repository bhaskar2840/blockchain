//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Seating{



function factorial(uint8 _number) public pure returns(uint8) {
    uint8 i = 1;
    while(i<_number){
        _number*=i;
        i+=1;
    }
    return _number;
}

function answer(uint8 total,uint8 transaction) public pure returns(uint){
    require(transaction>=1);
    uint8 a = factorial(total-1);
    uint8 b = total-transaction-transaction-1;
    uint c = factorial(b) * (2**transaction);
    uint d = a-c;

    return (d);

}




}


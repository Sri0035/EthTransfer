// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

contract ethTransfer{
    address public owner;

   modifier restricted(){
        require(msg.sender == owner);
        _;
    }

    constructor (address creator) public payable{
        owner = creator;
    }

    function transfer(address payable recipient, uint money) public{

        payable(recipient).transfer(money);
    }

    function refill() public payable restricted{}

    
}
pragma solidity ^0.8.9;


contract Transact{
    
    
    address private sender = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;

    
    constructor() public payable {
        require(msg.value > 0.01 ether); 
    }


    function send(address payable user) payable external {
        uint money = msg.value;
        user.transfer(address(this).balance);
    }

 
}
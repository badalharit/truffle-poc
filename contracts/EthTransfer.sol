// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.12;

contract EthTransfer{
    address public sender;
    address public receiver;

    constructor(){
        receiver = msg.sender;//Global variable to pass the contract deployer hash address
    }

    receive() external payable{
        sender = payable(msg.sender);//It'll transfer the ETH
    }

    function getBalance() public view returns(uint){
        return address(this).balance; // Balance in contract address
    }

    function transferToReceiver() public{
        payable(receiver).transfer(getBalance());
    }
}
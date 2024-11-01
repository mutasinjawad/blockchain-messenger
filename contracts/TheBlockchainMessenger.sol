// SPDX-License-Identifier: MIT

pragma solidity 0.8.27;

contract BlockChainMessenger{

    address owner;
    uint public counter;
    string public myMessage;

    constructor() {
        owner = msg.sender;
    }

    function updateMessage(string memory _newMessage) public {
        if (owner == msg.sender) {
            myMessage = _newMessage;
            counter++;
        }
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RevertExerciseA {

    address public owner;

    constructor() payable {
        require(msg.value >= 1 ether, "not enough ether");
        owner = msg.sender;
    }


    function withdraw() public payable {
        require(msg.sender == owner);
        (bool withdrawSuccess, ) = payable(msg.sender).call{value: address(this).balance}("");
    }
}

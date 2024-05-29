// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function sendAlert(address hero) external {
        // TODO: fill in the function signature in the ""
        bytes4 signature = bytes4(keccak256("alert()"));

        (bool success, ) = hero.call(abi.encodePacked(signature));

        require(success);
    }
}

/*
Function Signature

The first step to forming calldata manually is taking the keccak256 hash of the function signature you are targeting.

So, for example, if we we are trying to call rumble:

function rumble() external;

We need to take the keccak256 hash of rumble() and grab the first 4 bytes.
 As it turns out, those 4 bytes are 0x7e47cd7e. This would be our entire calldata to make the function call to rumble on a contract!
 */
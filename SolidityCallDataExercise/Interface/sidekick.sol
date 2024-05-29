// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IHero {
    function alert() external;
}

contract Sidekick {
    function sendAlert(address hero) external {
        // TODO: alert the hero using the IHero interface
        IHero(hero).alert();
    }
}


/* Interfaces

The easiest way to enable one contract to interact with another is by defining the target contract. Interfaces serve this purpose; for example:

this is the higher level syntax:

interface IToken {
    function getBalance(address user) external;
}

We can use this interface to properly communicate with a token contract that implements the getBalance method:

// tokenAddress: a contract adddress we want to communicate with
// userAddress: the address we want to lookup the balance for
uint balance = IToken(tokenAddress).getBalance(userAddress);


*/
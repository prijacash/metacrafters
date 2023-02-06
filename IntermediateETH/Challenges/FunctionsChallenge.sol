// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Use view functions, pure, payable functions

contract FunctionsChallenge {
    uint public x = 10;

    // view function
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // pure function
    function subtract(uint c, uint d) public pure returns (uint) {
        return c - d;
    }

    // Function with payable
    function addToB(uint b) public payable returns (uint) {
        return x + b;
    }

}
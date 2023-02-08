// SPDX-Identifier: UNLICENSED

pragma solidity ^0.8.13;

contract SampleContract {
    uint256 public constant MINIMUM_DEPOSIT = 100;

    function depositRequire (uint256 amount) public pure {
        // - condition before it executes
        require(amount >= MINIMUM_DEPOSIT, "Deposit amount is too low.");

    }

    function testRevert (uint256 amount) public pure {
        // reverts code and will be able to refund any gas left over
        if (amount <= 100) {
            revert("Input must be greater than 100");
        }

    }

    uint public num;

    function testAssert() public view {
        // Assert should only be used to test for internal errors,
        assert(num == 0);
    }
    

}

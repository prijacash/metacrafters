// SPDX-Identifier: UNLICENSED

pragma solidity ^0.8.13;

contract SampleContract {
    uint256 public constant MINIMUM_DEPOSIT = 100;

    function depositRequire (uint256 amount) public pure {
        require(amount >= MINIMUM_DEPOSIT, "Deposit amount is too low.");
    }

    function testRevert(uint256 amount) public pure {
        if (amount < MINIMUM_DEPOSIT) {
            revert("Deposit must be equal to or greater than MINIMUM_DEPOSIT");
        }
    }

    uint public num;

    function testAssert() public view {
        assert(num <= 100, "num must be less than or equal to 100");
    }
    

}

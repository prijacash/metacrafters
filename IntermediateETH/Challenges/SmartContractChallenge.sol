// SPDX-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Token {
    uint256 public totalSupply;
    mapping(address => uint256) public balances;

    function addSupply(uint256 value) public {
        totalSupply += value;
        balances[msg.sender] += value;
    }

    function transfer(address _to, uint256 _value) public {
        require(balances[msg.sender] >= _value, "Insufficient balance.");
        balances[msg.sender] -= _value;
        balances[_to] += _value;
    }
}

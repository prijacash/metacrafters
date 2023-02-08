pragma solidity ^0.8.0;

// Counter Contract
contract Counter {
    uint256 public count;

    function increment() public {
        count++;
    }
}

// Proxy Contract
contract ProxyCounter is Counter {
    Counter realCounter;

    constructor(address _counterAddress) public {
        realCounter = Counter(_counterAddress);
    }

    function increment() public {
        realCounter.increment();
    }
}

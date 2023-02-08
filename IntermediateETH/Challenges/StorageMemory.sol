// SPDX-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Auction {
    // storage variable to keep track of the highest bid
    uint256 public highestBid;

    // storage address to keep track of the highest bidder
    address public highestBidder;

    // memory variable to store the current bid amount
    uint256 currentBid;

    // function to place a bid
    function bid() public payable {
        // require that the bid is higher than the current highest bid
        require(msg.value > highestBid, "Bid must be higher than the current highest bid");

        // store the current bid amount in memory
        currentBid = msg.value;

        // update the highest bid and highest bidder in storage
        highestBid = currentBid;
        highestBidder = msg.sender;
    }
}

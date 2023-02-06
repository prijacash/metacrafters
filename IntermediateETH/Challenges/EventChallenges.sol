pragma solidity ^0.8.13;

contract Test {
   event Deposit(address indexed _from, bytes32 indexed _id, uint _value);
   event Transfer(address indexed _from, address indexed _to, uint256 _value);
   event AuctionStarted(uint256 indexed _auctionId, uint256 _startTime);
   event BidPlaced(address indexed _bidder, uint256 indexed _itemId, uint256 _value);

   function deposit(bytes32 _id) public payable {      
      emit Deposit(msg.sender, _id, msg.value);
   }

   function transfer(address _to, uint256 _value) public {
      require(msg.sender.balance >= _value, "Insufficient balance");
      _to.transfer(_value);
      emit Transfer(msg.sender, _to, _value);
   }

   function startAuction(uint256 _auctionId) public {
      uint256 startTime = now;
      emit AuctionStarted(_auctionId, startTime);
   }

   function placeBid(uint256 _itemId, uint256 _value) public payable {
      require(msg.value >= _value, "Bid value is too low");
      emit BidPlaced(msg.sender, _itemId, _value);
   }
}

let Web3 = require("web3");
let web3 = new Web3(new Web3.providers.WebsocketProvider("wss://mainnet.infura.io/ws"));
let abi = [ABI of the contract];
let contractAddress = "0x...(contract address)";
let contractInstance = new web3.eth.Contract(abi, contractAddress);

// Deposit event
contractInstance.events.Deposit({}, function(error, event) {
   if (!error) {
      console.log("Deposit event:", event);
   }
});

// Transfer event
contractInstance.events.Transfer({}, function(error, event) {
   if (!error) {
      console.log("Transfer event:", event);
   }
});

// AuctionStarted event
contractInstance.events.AuctionStarted({}, function(error, event) {
   if (!error) {
      console.log("AuctionStarted event:", event);
   }
});

// BidPlaced event
contractInstance.events.BidPlaced({}, function(error, event) {
   if (!error) {
      console.log("BidPlaced event:", event);
   }
});

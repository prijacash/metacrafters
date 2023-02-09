// Check if the user has Metamask installed
if (typeof window.ethereum === 'undefined') {
  console.error('Please install Metamask to continue.');
} else {
  // Request access to the user's accounts
  window.ethereum.request({ method: 'eth_requestAccounts' }).then(accounts => {
    // Check if the user has granted access
    if (accounts.length === 0) {
      console.error('Please grant access to your Metamask accounts to continue.');
    } else {
      console.log(`Connected to Metamask! Your active account is: ${accounts[0]}`);
      // Use the active account here
    }
  }).catch(error => {
    console.error(`An error occurred while connecting to Metamask: ${error}`);
  });
}

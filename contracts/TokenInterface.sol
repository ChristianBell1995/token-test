pragma solidity ^0.6.0;


import './CRCToken.sol';
// This file will hold our TokenInterface contract so we can interact with our token without having to change anything in the Token contract directly

contract TokenInterface {
    CRCToken token;
    address CRCOwner;

    modifier onlyCRCOwner() {
          require (msg.sender == CRCOwner);
          _;
    }

    constructor(address tokenAddress, address tokenOwnerAccount) public {
        CRCOwner = tokenOwnerAccount;
        token = CRCToken(tokenAddress);
    }

    function setAppWalletAddress(address _newAddress) public onlyCRCOwner {
        CRCOwner = _newAddress;
    }

    function transfer(address _to, uint256 amount) public onlyCRCOwner returns (bool) {
        return token.transfer(_to, amount);
    }
}

pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// This file will hold our ERC20 / ERC777 token 

contract CRCToken is ERC20 {
    constructor(uint256 initialSupply) public ERC20("ChristianCoin", "CRC") {
        _mint(msg.sender, initialSupply);
    }
}
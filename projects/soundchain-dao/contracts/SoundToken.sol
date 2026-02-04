// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SoundToken is ERC20, Ownable {
    uint256 public constant MAX_SUPPLY = 10_000_000 ether;

    constructor() 
        ERC20("SoundChain Token", "SOUND")
        Ownable(msg.sender)
    {
        _mint(msg.sender, 1_000_000 ether);
    }

    function mint(address to, uint256 amount) external onlyOwner {
        require(totalSupply() + amount <= MAX_SUPPLY, "Exceeds max supply");
        _mint(to, amount);
    }
}

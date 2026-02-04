// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Royalty.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MusicNFT is ERC721Royalty, Ownable {
    uint256 private _nextTokenId;

    constructor() 
        ERC721("MusicNFT", "MNFT")
        Ownable(msg.sender)  // Passa o initialOwner
    {
        _nextTokenId = 1;
    }

    function safeMint(address to) external onlyOwner returns (uint256) {
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
        return tokenId;
    }

    function setDefaultRoyalty(address receiver, uint96 feeNumerator) external onlyOwner {
        _setDefaultRoyalty(receiver, feeNumerator);
    }

    // Funções auxiliares
    function totalSupply() external view returns (uint256) {
        return _nextTokenId - 1;
    }
}

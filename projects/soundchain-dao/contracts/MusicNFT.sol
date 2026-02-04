// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Royalty.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MusicNFT is ERC721Royalty, Ownable {

    uint256 public nextTokenId;

    constructor() ERC721("SoundChain Music NFT", "SMUSIC") {}

    function mint(
        address artist,
        string memory uri,
        uint96 royaltyBps
    ) external onlyOwner returns (uint256) {

        uint256 id = nextTokenId++;

        _safeMint(artist, id);
        _setTokenRoyalty(id, artist, royaltyBps);

        return id;
    }
}

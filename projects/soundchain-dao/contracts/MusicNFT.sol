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
        _setTokenURI(id, uri);
        _setTokenRoyalty(id, artist, royaltyBps);

        return id;
    }

    mapping(uint256 => string) private _tokenURIs;

    function _setTokenURI(uint256 id, string memory uri) internal {
        _tokenURIs[id] = uri;
    }

    function tokenURI(uint256 id)
        public view override returns (string memory)
    {
        return _tokenURIs[id];
    }

    function supportsInterface(bytes4 interfaceId)
        public view override(ERC721Royalty)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}

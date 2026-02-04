# SoundChain DAO

Web3 DAO for crowdfunding music with NFTs and automatic royalty distribution.

## Problem

Independent artists depend on intermediaries (record labels/streaming services) for fundraising and revenue distribution, reducing control and profit margins.

## Solution

SoundChain DAO uses:

* NFTs (tokenized music)
* ERC20 token for governance
* Smart contracts for automatic royalty splitting
* Decentralized voting for community decisions

## Architecture

Frontend (optional) → Hardhat → Smart Contracts (Polygon/Ethereum)

Contracts:

* SoundToken (ERC20 + Governance)
* MusicNFT (ERC721 + Royalty)
* RoyaltySplitter (payments)
* Governance (DAO)

## Stack

* Solidity ^0.8
* Hardhat
* OpenZeppelin
* Node.js
* Polygon Mumbai/Amoy testnet

## Fast Execution

```bash
npm install
npx hardhat compile
npx hardhat test
npx hardhat run scripts/deploy.js --network amoy
```

## Documentation

/docs

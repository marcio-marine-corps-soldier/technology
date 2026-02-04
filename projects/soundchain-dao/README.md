# SoundChain DAO

<img width="1024" height="512" alt="capa-dao-project" src="https://github.com/user-attachments/assets/2cbe1699-9060-4664-ba59-47abe9261385" />

Smart-contract based DAO for music crowdfunding, NFT minting and automated royalty distribution.

---

## Overview

SoundChain DAO is a Web3 protocol that allows:

* artists to tokenize music as NFTs
* supporters to fund projects on-chain
* royalties to be split automatically by smart contracts
* governance through an ERC20 voting token

The repository focuses on contracts and infrastructure only (no frontend).

---

## Problem

Music distribution and funding usually depend on centralized intermediaries that:

* control payouts
* delay royalties
* reduce artist margins

---

## Solution

On-chain contracts handle:

* NFT ownership
* royalty logic
* token-based governance
* transparent execution

All rules are enforced programmatically, without intermediaries.

---

## Architecture

```
Hardhat
 ├─ SoundToken (ERC20 + Votes)
 ├─ MusicNFT (ERC721 + ERC2981 royalties)
 ├─ RoyaltySplitter (payment distribution)
 └─ scripts/tests
```

Network target: Polygon Amoy testnet or local Hardhat network.

---

## Stack

* Solidity ^0.8.x
* Hardhat
* OpenZeppelin
* Node.js
* Polygon (EVM)

---

## Contracts

### SoundToken.sol

ERC20 governance token with voting power (ERC20Votes).

### MusicNFT.sol

ERC721 NFT for music tracks with ERC2981 royalties.

### RoyaltySplitter.sol

Splits received payments between stakeholders.

### Governance.sol *(optional / experimental)*

DAO governance module using OpenZeppelin Governor.

---

## Installation

```bash
git clone <repo>
cd soundchain-dao
npm install
```

---

## Compile

```bash
npx hardhat compile
```

---

## Tests

```bash
npx hardhat test
```

---

## Local Deployment (recommended for evaluation)

```bash
npx hardhat run scripts/deploy.js
```

Runs on the local Hardhat network.

---

## Testnet Deployment (optional)

Requires MATIC from faucet.

```bash
cp .env.example .env
# add RPC + PRIVATE_KEY

npx hardhat run scripts/deploy.js --network amoy
```

---

## Project Structure

```
contracts/
scripts/
test/
docs/
hardhat.config.js
package.json
```

---

## Documentation

See `/docs`:

* whitepaper.md
* architecture.md
* tokenomics.md
* business.md

---

## Status

* Contracts compile successfully
* Unit tests passing
* Local deployment validated
* Testnet deployment supported

---

## License

MIT

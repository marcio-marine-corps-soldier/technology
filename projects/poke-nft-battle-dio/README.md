# 🎮 PokeDIO NFT Battle Game (ERC-721)

<img width="1024" height="605" alt="Poke-Batle" src="https://github.com/user-attachments/assets/8a22e6ed-0491-4a6d-a493-3fe90628c052" />

Project developed in Solidity using the ERC-721 (NFT) standard, simulating a Pokémon battle game.

DIO's practical challenge to apply concepts of:

- Smart Contracts
- Solidity
- OpenZeppelin
- ERC-721
- Deployment and testing in Remix
- Git/GitHub

---

## 🚀 Technologies
- Solidity ^0.8.20
- OpenZeppelin
- Remix IDE
- Ethereum VM (Osaka)

---

## 🧠 Concept

Each Pokémon is a unique NFT containing:

- Name
- Level
- Image (IPFS)
- Owner

Pokémon can:

✔ Be created (mint)
✔ Battle each other (level up)
✔ Be transferred between wallets

---

## 📜 Contract functionalities

### Mint
- `createNewPokemon()`
- `createMultiplePokemons()`

### Battle
- `battle(attackerId, defenderId)`

- winner gains more level

### Query
- `getPokemon(id)`

- `getPokemonCount()`

### Transfer
- native ERC-721 functions (`transferFrom`, `safeTransferFrom`)

---

## 📂 Structure

```

poke-nft-battle-dio/
│
├─ contracts/
│ └─ PokeDIO.sol
│
├─ prints/
│ ├─ deploy.png
│ ├─ create-bulbasaur.png
│ ├─ create-charmander.png
│ ├─ battle.png
│ ├─ levels-after-battle.png
│ └─ transfer.png
│
├─ README.md
├─ .gitignore
└─ LICENSE

```

---

## 🧪 Tests performed (Remix VM)

### Deploy
![deploy](prints/deploy.png)

### Creating Bulbasaur
![buba](prints/create-bulbasaur.png)

### Creating Charmander
![char](prints/create-charmander.png)

### Battle
![battle](prints/battle-bulbasaur-charmander.png)

### NFT Transfer
![transfer](prints/charmander-transfer.png)

---

## 📄 Contract

Located at:

```

contracts/PokeDIO.sol

```

---

## 🎯 Result

Functional NFTs ERC-721 with simple game mechanics (battle + level up).

Ready for future evolution:
- stats (attack/defense)
- randomization
- marketplace
- Chainlink VRF
- Web3 frontend

---

## 👨‍💻 Author
Márcio F. Reis

---

## 📄 License
This project is under the MIT License. It can be used, modified, and studied for educational purposes.

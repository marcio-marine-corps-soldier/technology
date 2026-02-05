# 🎮 PokeDIO NFT Battle Game

![Solidity](https://img.shields.io/badge/Solidity-0.8.20-blue)
![OpenZeppelin](https://img.shields.io/badge/OpenZeppelin-5.0-green)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow)
![Status](https://img.shields.io/badge/status-complete-success)

Um **jogo de batalhas Pokémon baseado em NFTs ERC-721 na blockchain Ethereum**, onde cada criatura é **única, transferível e evolui com experiência em combate**.

Colecione. Batalhe. Evolua. Negocie. Tudo on-chain.

---

## 🚀 Visão Geral

O **PokeDIO NFT Battle Game** é um smart contract desenvolvido em **Solidity**, seguindo o padrão **ERC-721**, que simula batalhas PvP entre Pokémons tokenizados.

Cada Pokémon é um NFT exclusivo com:

* Nome
* Nível
* Imagem (IPFS/URL)
* Dono on-chain

O sistema permite progressão de nível, transferências seguras e criação controlada pelo owner.

---

## ⚔️ Funcionalidades

* ✅ NFTs ERC-721 únicos
* ⚔️ Sistema de batalha PvP
* 📈 Evolução por XP
* 👑 Mint controlado pelo owner
* 🔄 Transferência livre entre jogadores
* 🛡️ Segurança com OpenZeppelin

---

## 🧠 Stack Tecnológica

| Tecnologia       | Uso                     |
| ---------------- | ----------------------- |
| Solidity 0.8.20  | Smart Contracts         |
| OpenZeppelin 5.0 | Segurança e padrões ERC |
| Hardhat          | Testes e scripts        |
| Remix IDE        | Deploy rápido           |
| MetaMask         | Interação               |

---

## 🏗️ Estrutura do Contrato

```solidity
contract PokeDIO is ERC721, Ownable {

    struct Pokemon {
        string name;
        uint256 level;
        string img;
    }

    Pokemon[] private _pokemons;

    event PokemonCreated(uint256 id, string name, address owner);
    event PokemonTransferred(uint256 id, address from, address to);
    event BattleFought(uint256 attackerId, uint256 defenderId);

    function createNewPokemon(string name, address to, string img) public onlyOwner;
    function battle(uint256 attackerId, uint256 defenderId) public;
    function transferPokemon(address to, uint256 tokenId) public;
    function getPokemon(uint256 id) public view returns (...);
}
```

---

## 🎮 Como Jogar

### 👑 Dono do contrato

1. Deploy
2. Criar Pokémons
3. Distribuir para jogadores

### 🧑‍🚀 Jogadores

1. Receber NFT
2. Batalhar
3. Evoluir nível
4. Transferir ou negociar

---

## 📈 Regras de Batalha

| Condição            | Resultado |
| ------------------- | --------- |
| atacante ≥ defensor | +2 / +1   |
| atacante < defensor | +1 / +2   |

Regras adicionais:

* Apenas o dono pode usar seu Pokémon
* Não é possível batalhar com IDs inexistentes
* Evolução permanente on-chain

---

## 🔧 Desenvolvimento

### Ambiente recomendado

* Remix VM (London)
* Ganache
* MetaMask
* Sepolia ou Localhost

### Deploy rápido (Remix)

1. Acesse:

```bash
https://remix.ethereum.org
```

2. Compile
3. Selecione **Remix VM (London)**
4. Deploy com Account 0
5. Interaja com as funções

---

## 🧪 Testes

Casos validados:

* ✅ Mint pelo owner
* ❌ Mint por não-owner
* ✅ Batalhas válidas
* ✅ Evolução de nível
* ❌ Transferência sem permissão
* ❌ IDs inválidos

### Exemplo de teste

```javascript
await contract.createNewPokemon("Pikachu", owner, "ipfs://hash");
await contract.battle(0, 1);
await contract.getPokemon(0);
```

---

## 📁 Estrutura do Projeto

```
pokedio-game/
├── contracts/
│   └── PokeDIO.sol
├── scripts/
│   ├── deploy.js
│   └── interact.js
├── test/
│   └── PokeDIO.test.js
├── hardhat.config.js
├── package.json
├── .env.example
├── LICENSE
└── README.md
```

---

## 🚀 Deploy com Hardhat

### Local

```bash
npx hardhat node
npx hardhat run scripts/deploy.js --network localhost
```

### Testnet

```bash
npx hardhat run scripts/deploy.js --network sepolia
```

### Mainnet

```bash
npx hardhat run scripts/deploy.js --network mainnet
```

---

## 🔐 Segurança

Implementado:

* OpenZeppelin auditado
* require() validations
* safeMint / safeTransfer
* Controle de acesso (Ownable)
* Verificação de existência

Recomendado:

* Slither
* MythX
* Testes fuzzing

---

## 📈 Roadmap

### Fase 1 ✅

* ERC-721 básico
* Sistema de batalha
* Mint controlado

### Fase 2 🚧

* Tipos elementais
* Itens
* Torneios

### Fase 3 📅

* Marketplace
* Breeding
* Mobile/Web App

---

## 🤝 Contribuindo

```bash
git fork
git checkout -b feature/nova-feature
git commit -m "feat: nova feature"
git push
```

Boas práticas:

* Testes obrigatórios
* Código limpo
* Documentação

---

## 🆘 Solução de Problemas

**Não consegue criar Pokémon?**
→ Use a conta do deploy

**Não é dono do NFT?**
→ Verifique `ownerOf(tokenId)`

**ID inválido?**
→ Consulte `getPokemonCount()`

---

## 📄 Licença

MIT License

---

## 🙏 Agradecimentos

* OpenZeppelin
* Remix
* Comunidade Ethereum
* DIO

---

<div align="center">

### 🐉 Desenvolvido para portfólio Web3 + Blockchain

</div>

---

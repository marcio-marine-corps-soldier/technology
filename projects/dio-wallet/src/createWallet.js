// dependências
const bip32 = require('bip32')
const bip39 = require('bip39')
const bitcoin = require('bitcoinjs-lib')

// MAINNET
const network = bitcoin.networks.bitcoin

// BIP49 - P2PKH (legacy compatível)
const path = `m/49'/0'/0'/0`

// mnemonic
let mnemonic = bip39.generateMnemonic()
const seed = bip39.mnemonicToSeedSync(mnemonic)

// raiz HD
let root = bip32.fromSeed(seed, network)

// derivação
let account = root.derivePath(path)
let node = account.derive(0).derive(0)

// endereço real
let btcAddress = bitcoin.payments.p2pkh({
  pubkey: node.publicKey,
  network: network,
}).address

console.log("🚨 CARTEIRA REAL GERADA 🚨")
console.log("Endereço BTC:", btcAddress)
console.log("Chave Privada (WIF):", node.toWIF())
console.log("Seed (GUARDE OFFLINE):", mnemonic)

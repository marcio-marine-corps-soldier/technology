async function main() {
  const [deployer] = await ethers.getSigners();

  const Token = await ethers.getContractFactory("SoundToken");
  const token = await Token.deploy();

  const NFT = await ethers.getContractFactory("MusicNFT");
  const nft = await NFT.deploy();

  console.log("Token:", token.target);
  console.log("NFT:", nft.target);
}

main().catch(console.error);

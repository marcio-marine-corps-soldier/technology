const hre = require("hardhat");

async function main() { 
console.log("🚀 Starting deployment on the network", hre.network.name, "...\n"); 

// Check wallet 
const [deployer] = await hre.ethers.getSigners(); 
console.log("👤 Deployer:", deployer.address); 

const balance = await hre.ethers.provider.getBalance(deployer.address); 
console.log("💰 Balance:", hre.ethers.formatEther(balance), "MATIC"); 

if (balance === 0n) { 
console.log("❌ Insufficient balance!"); 
return; 
} 

// 1. Deploy SoundToken 
console.log("\n📝 Deploying SoundToken..."); 
const SoundToken = await hre.ethers.getContractFactory("SoundToken"); 
const soundToken = await SoundToken.deploy(); 

await soundToken.waitForDeployment(); 
const soundTokenAddress = await soundToken.getAddress(); 
console.log("✅ SoundToken deployed to:", soundTokenAddress); 
console.log("📝 Tx hash:", soundToken.deploymentTransaction().hash); 

// 2. Deploy MusicNFT 
console.log("\n🎵 Deploying MusicNFT..."); 
const MusicNFT = await hre.ethers.getContractFactory("MusicNFT"); 
const musicNFT = await MusicNFT.deploy(); 

await musicNFT.waitForDeployment(); 
const musicNFTAddress = await musicNFT.getAddress(); 
console.log("✅ MusicNFT deployed to:", musicNFTAddress); 
console.log("📝 Tx hash:", musicNFT.deploymentTransaction().hash); 

// 3. Summary 
console.log("\n🎉 DEPLOY COMPLETE!"); 
console.log("========================"); 
console.log("🎵 SoundToken:", soundTokenAddress); 
console.log("🎶 MusicNFT:", musicNFTAddress); 
console.log("👤 Deployer:", deployer.address); 
console.log("========================"); 

console.log("\n🔍 Check in explorer:"); 
console.log(`https://amoy.polygonscan.com/address/${soundTokenAddress}`); 
console.log(`https://amoy.polygonscan.com/address/${musicNFTAddress}`);
}

main().catch((error) => { 
console.error("❌ Error:", error.message); 
process.exitCode = 1;
});

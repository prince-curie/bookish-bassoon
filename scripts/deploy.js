const {ethers} = require("hardhat");

async function main() {
  // We get the contract to deploy
  const CosToken = await ethers.getContractFactory("CosToken");
  const token = await CosToken.deploy();

  await token.deployed();

  console.log("Token deployed to:", token.address);

  const CosNFT = await ethers.getContractFactory("CosNFT");
  const nft = await CosNFT.deploy();

  await nft.deployed();

  console.log("NFT deployed to:", nft.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

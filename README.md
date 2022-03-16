## Objectives

- Implement a standard ERC20 token with a fixed total supply of 1,000,000 tokens. 
- Add a payable function "buyToken" which accepts an ethereum address, "receiver" as a parameter, and then increments the token balance of the receiver with bought tokens.  
- The cost of buying tokens would be 1000 Tokens per ETH. Increment the total supply with the newly created tokens
- Create an ERC721 token. 
- The token metadata should be stored onchain and the image in each metadata should be hosted on IPFS. 
- Mint two NFTs with your contract

### Contract Address
- CosToken address = 0x44CDA5E172b0ddFFe0b7d834758D53eE1b4D0A5c
- CosNFT address = 0xD72bbe2742784cD3E4AE902df075D65137965d2b

### NFT image links
- https://ipfs.io/ipfs/Qmejef8gDj9uz6iLrdJP3dLXvNWuQY1VoxyAV39Ny2xJyQ
- https://ipfs.io/ipfs/QmakNZiY5sfEeHnd9ksb6si1RUNEaNSjjNmZRcSNWJ9bET

### MetaData Structure
```JSON
{
    "name": "Cos",
    "image": "https://ipfs.io/ipfs/Qmejef8gDj9uz6iLrdJP3dLXvNWuQY1VoxyAV39Ny2xJyQ",
    "description": "A group of NFT's built for fun"
}

{
    "name": "Cos",
    "image": "https://ipfs.io/ipfs/QmakNZiY5sfEeHnd9ksb6si1RUNEaNSjjNmZRcSNWJ9bET",
    "description": "A group of NFT's built for fun"
}
```


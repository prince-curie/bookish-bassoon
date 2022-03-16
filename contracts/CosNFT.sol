// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract CosNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private index;

    string constant _description = "A group of NFT's built for fun.";
    string constant _name = 'Cos';
    string constant _symbol = 'CNT';
    
    struct MetaDataLayout {
        string name;
        string image;
        string description;
    }

    constructor() ERC721(_name, _symbol) { }

    function description() public pure returns(string memory) {
        return _description;
    }

    function _baseURI() internal pure override returns (string memory) {
        return "https://ipfs.infura.io/ipfs/";
    }

    function mint(string memory _tokenURI) public {
        index.increment();
        uint256 tokenId = index.current();

        super._mint(msg.sender, tokenId);
        super._setTokenURI(tokenId, _tokenURI);
    }

    function getMetadata(uint256 tokenId) public view returns (MetaDataLayout memory) {
        require(super._exists(tokenId), "CosNFT::NFT does not exist.");

        string memory tokenURI = super.tokenURI(tokenId);

        return MetaDataLayout(
            _name, tokenURI, _description
        );
    }
}
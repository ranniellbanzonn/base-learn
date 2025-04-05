// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";



contract Boruto is ERC721URIStorage {
    uint256 tokenId;


    constructor() ERC721 ("Boruto", "BRT"){}


    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "https://raw.githubusercontent.com/ranniellbanzonn/base-learn/refs/heads/main/ERC721/metadata/myFirstNFT.json"
            
        );
        tokenId++;
    }
}
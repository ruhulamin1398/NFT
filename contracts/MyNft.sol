// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";   

contract MyNFT is ERC721URIStorage,Ownable{
    uint256 private _nextTokenId;

    constructor() ERC721("GameItem", "ITM") Ownable(msg.sender) {

    }

        function mintNFT(address recipient, string memory tokenURI)
        public
        onlyOwner
        returns (uint256){
        

        uint256 newItemId= _nextTokenId++;
        _mint(recipient , newItemId);
        _setTokenURI(newItemId,tokenURI);
        return newItemId;
    }


}
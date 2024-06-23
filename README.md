# MyNFT 

This repository contains the implementation of an ERC721 NFT (Non-Fungible Token) smart contract. The smart contract leverages OpenZeppelin libraries to provide standard NFT functionalities along with URI storage and ownership control.

## Overview

The `MyNFT` contract allows the owner to mint NFTs with unique token URIs. It is built using Solidity and makes use of OpenZeppelin's ERC721 and Ownable contracts for secure and efficient development.

## Features

- **ERC721 Standard**: Implements the ERC721 standard for NFTs.
- **URI Storage**: Uses ERC721URIStorage to store token URIs.
- **Ownership**: Restricts minting functionality to the contract owner.
- **Token Management**: Allows the owner to mint new NFTs and assign unique token URIs.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Solidity ^0.8.20
- Node.js and npm
- Truffle or Hardhat for deployment and testing
- A local blockchain instance (like Ganache) or a testnet (like Rinkeby)

## Installation

1. **Clone the repository**:
    ```sh
    https://github.com/ruhulamin1398/NFT.git
    cd MyNFT
    ```

2. **Install dependencies**:
    ```sh
    npm install
    ```

3. **Compile the smart contract**:
    ```sh
    npx hardhat compile
    ```

## Deployment

To deploy the contract, follow these steps:

1. **Configure the network settings** in your `hardhat.config.js` or `truffle-config.js` file.
2. **Deploy the contract** using Hardhat or Truffle:

    **Using Hardhat**:
    ```sh
    npx hardhat run scripts/deploy.js --network <network-name>
    ```

    **Using Truffle**:
    ```sh
    truffle migrate --network <network-name>
    ```

## Usage

After deploying the contract, you can interact with it using the following functions:

- **mintNFT**: Mint a new NFT
    ```solidity
    function mintNFT(address recipient, string memory tokenURI) public onlyOwner returns (uint256)
    ```

## Example

Here's an example of how to use the `mintNFT` function in a JavaScript script:

```javascript
const MyNFT = artifacts.require("MyNFT");

module.exports = async function(callback) {
    try {
        const accounts = await web3.eth.getAccounts();
        const myNFT = await MyNFT.deployed();

        const recipient = accounts[1];
        const tokenURI = "https://example.com/metadata/1";
        const tokenId = await myNFT.mintNFT(recipient, tokenURI);

        console.log("NFT minted with tokenId:", tokenId.toString());
        callback();
    } catch (error) {
        console.error("Error minting NFT:", error);
        callback(error);
    }
};

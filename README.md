# Token Smart Contract

## Simple Overview of Use/Purpose
This Solidity program is an ERC20 token contract named "Tempest" with the symbol "TEM". It demonstrates basic token functionalities such as minting, burning, and transferring tokens. The contract is intended to serve as a foundational project for learning how to create and manage ERC20 tokens on the Ethereum blockchain.

## Description
The Token contract implements the ERC20 standard, allowing users to perform token transactions and manage token balances. The contract includes functionality for the owner to mint new tokens, for any user to burn their own tokens, and for users to transfer tokens to others.

## Getting Started

### Installing
To get started with this project, you can use Remix, an online IDE for Solidity. Remix allows you to write, compile, and deploy smart contracts directly in the browser without the need for local installation.

### How/Where to Download Your Program:
No download is required. Access Remix IDE online at [https://remix.ethereum.org](https://remix.ethereum.org).

### Any Modifications Needed to Be Made to Files/Folders:
No modifications are necessary. You can copy the code directly into a new file within the Remix IDE.

## Executing Program

### How to Run the Program:

1. **Open Remix IDE:**
   - Visit [https://remix.ethereum.org](https://remix.ethereum.org).

2. **Create a New File:**
   - Click on the "+" icon in the left-hand sidebar.
   - Save the file with a `.sol` extension (e.g., `Token.sol`).

3. **Copy the Code:**

   Copy and paste the following code into the newly created file:

   ```solidity
   // SPDX-License-Identifier: MIT
   pragma solidity >=0.8.9;

   import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

   contract Token is ERC20 {
       address private owner;

       constructor() ERC20("Tempest", "TEM") {
           owner = msg.sender;
       } 

       modifier onlyOwner {
           require(owner == msg.sender, "only owner can mint Tokens");
           _;
       }

       function mint(address _to, uint _val) public onlyOwner {
           _mint(_to, _val);
       }

       function burnByAnyone(uint _val) public {
           _burn(msg.sender, _val);
       }

       function transferToAnyone(address _to, uint _val) public {
           _transfer(msg.sender, _to, _val);
       }
   }

**Minting Function Errors:**
  - Only the contract owner can mint tokens. Ensure that the caller is the owner.

**Burning or Transferring Tokens Errors:**
  - Ensure the caller has sufficient token balance for burning or transferring.


### Authors
Contributor Name:

DeepakSxn
License
This project is licensed under the MIT License - see the LICENSE.md file for details.

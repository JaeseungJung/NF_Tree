// contracts/GameItems.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract TreeItems is ERC1155 {
    uint256 public constant Iron = 0;
     uint256 public constant SILVER = 1;
    uint256 public constant GOLD = 2;
   
    


    constructor() public ERC1155("https://raw.githubusercontent.com/JaeseungJung/Sol/main/toy/Tree-Item/{id}.json") {
        _mint(msg.sender, Iron, 10**27, "");
        _mint(msg.sender, SILVER, 10**18, "");
        _mint(msg.sender, GOLD, 10**9, "");
   
    }
}


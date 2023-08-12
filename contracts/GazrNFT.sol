```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GazrNFT is ERC721, Ownable {
    uint256 private _tokenIdCounter;

    constructor() ERC721("GazrNFT", "GNFT") {
        _tokenIdCounter = 1;
    }

    function mint(address recipient) public onlyOwner {
        _mint(recipient, _tokenIdCounter);
        _tokenIdCounter++;
    }
}
```
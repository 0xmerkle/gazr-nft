```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "./GAZR.sol";
import "./GazrNFT.sol";

contract Airdrop {
    GAZR public gazrToken;
    GazrNFT public gazrNFT;
    uint256 public currentTokenId;

    constructor(address _gazrToken, address _gazrNFT) {
        gazrToken = GAZR(_gazrToken);
        gazrNFT = GazrNFT(_gazrNFT);
        currentTokenId = 1;
    }

    function distributeTokensAndMintNFT(address[] memory recipients) public {
        for (uint256 i = 0; i < recipients.length; i++) {
            gazrToken.transfer(recipients[i], 1);
            gazrNFT.mint(recipients[i], currentTokenId);
            currentTokenId++;
        }
    }
}
```
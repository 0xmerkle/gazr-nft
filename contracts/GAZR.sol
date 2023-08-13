```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GAZR is ERC20 {
    constructor() ERC20("GAZR Token", "GAZR") {
        _mint(msg.sender, 150 * 10 ** decimals());
    }
}
```
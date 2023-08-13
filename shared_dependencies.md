1. "GAZR.sol": This file exports the GAZR contract which is an ERC20 token contract. It has a function to initialize the supply of tokens.

2. "GazrNFT.sol": This file exports the GazrNFT contract which is an ERC721 token contract. It has a function to mint NFTs.

3. "Airdrop.sol": This file exports the Airdrop contract. It has a function `distributeTokensAndMintNFT` which takes an array of recipient addresses as an argument.

4. "2_deploy_contracts.js": This file uses the exported contracts from "GAZR.sol", "GazrNFT.sol", and "Airdrop.sol" to deploy the contracts.

5. "test_airdrop.js": This file uses the exported contracts from "GAZR.sol", "GazrNFT.sol", and "Airdrop.sol" to test the `distributeTokensAndMintNFT` function.

Shared Dependencies:

- Contract Names: GAZR, GazrNFT, Airdrop
- Function Names: Initialization function in GAZR.sol, mint function in GazrNFT.sol, `distributeTokensAndMintNFT` function in Airdrop.sol
- Variables: Array of recipient addresses, token supply in GAZR.sol, tokenId in GazrNFT.sol
- Data Schemas: ERC20 token schema in GAZR.sol, ERC721 token schema in GazrNFT.sol
- Message Names: Not specified in the prompt.
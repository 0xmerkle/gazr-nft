const GAZR = artifacts.require("GAZR");
const GazrNFT = artifacts.require("GazrNFT");
const Airdrop = artifacts.require("Airdrop");

contract("Airdrop", accounts => {
  let gazr, gazrNFT, airdrop;

  before(async () => {
    gazr = await GAZR.deployed();
    gazrNFT = await GazrNFT.deployed();
    airdrop = await Airdrop.deployed();
  });

  it("should distribute tokens and mint NFTs", async () => {
    const recipients = accounts.slice(1, 101); // 100 addresses for testing

    await airdrop.distributeTokensAndMintNFT(recipients, { from: accounts[0] });

    for (let i = 0; i < recipients.length; i++) {
      const balance = await gazr.balanceOf(recipients[i]);
      assert.equal(balance.toString(), "1", "GAZR balance is incorrect");

      const owner = await gazrNFT.ownerOf(i + 1);
      assert.equal(owner, recipients[i], "NFT owner is incorrect");
    }
  });
});
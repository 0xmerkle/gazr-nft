const GAZR = artifacts.require("./GAZR.sol");
const GazrNFT = artifacts.require("./GazrNFT.sol");
const Airdrop = artifacts.require("./Airdrop.sol");

module.exports = function(deployer) {
  deployer.deploy(GAZR, 150).then(function() {
    return deployer.deploy(GazrNFT).then(function() {
      return deployer.deploy(Airdrop, GAZR.address, GazrNFT.address);
    });
  });
};
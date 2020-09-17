const CRCToken = artifacts.require("./CRCToken.sol");
const TokenInterface = artifacts.require("./TokenInterface.sol");

module.exports = function(deployer, _network, accounts) {
  const initialSupply = 1000000
  deployer.deploy(CRCToken, initialSupply).then(() => {
    return deployer.deploy(TokenInterface, CRCToken.address, accounts[0])
  });
};

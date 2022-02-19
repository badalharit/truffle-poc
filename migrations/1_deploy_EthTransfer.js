var EthTransfer = artifacts.require("./EthTransfer.sol");

module.exports = function(deployer) {
  deployer.deploy(EthTransfer);
};

const dMarketToken = artifacts.require("./dMarketToken.sol");

module.exports = function(deployer) {
  deployer.deploy(dMarketToken,999999999999999999999999999999999,'dMarket Token','dMT');
};

const dMarketToken = artifacts.require("./dMarketToken.sol");

module.exports = function(deployer) {
  deployer.deploy(
    dMarketToken,
    parseInt(process.env.TOKEN_SUPY),
    process.env.TOKEN_NAME,
    process.env.TOKEN_SYMB
  );
};

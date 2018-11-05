var Migrations = artifacts.require("./Migrations.sol");

module.exports = function(deployer) {
  console.log('Deploying Migrations...');
  deployer.deploy(Migrations);
};

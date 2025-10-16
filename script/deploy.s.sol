// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;
import "forge-std/Script.sol";
import "../src/Maelstrom.sol";

contract DeployScript is Script {
  function run() external {
    uint256 deployerPrivateKey = uint256(vm.envBytes32("PRIVATE_KEY"));
    vm.startBroadcast(deployerPrivateKey);
    ProtocolParameters pc = new ProtocolParameters(
      0x5FbDB2315678afecb367f032d93F642f64180aa3, //treasury
      0x5FbDB2315678afecb367f032d93F642f64180aa3, //manager
      100 //fee 1%
    );
    Maelstrom mc = new Maelstrom(address(pc));
    vm.stopBroadcast();
  }
}

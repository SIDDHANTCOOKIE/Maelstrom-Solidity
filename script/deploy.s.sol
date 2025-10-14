// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;
import "forge-std/Script.sol";
import "../src/Maelstrom.sol";

contract DeployScript is Script {
  function run() external {
    uint256 deployerPrivateKey = uint256(vm.envBytes32("PRIVATE_KEY"));
    vm.startBroadcast(deployerPrivateKey);
    Maelstrom mc = new Maelstrom();
    vm.stopBroadcast();
  }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/MyNFT.sol";

contract Deploy is Script {
    function run() external {
        vm.startBroadcast();

        MyNFT nft = new MyNFT();
        console.log("MyNFT deployed to:", address(nft));

        vm.stopBroadcast();
    }
}

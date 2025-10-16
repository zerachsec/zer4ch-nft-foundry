// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {zer4chNFT} from "../src/Zer4ch-NFT.sol";

contract DeployZer4chNft is Script {
    function run() external returns (zer4chNFT) {
        vm.startBroadcast();
        zer4chNFT Zchnft = new zer4chNFT();
        vm.stopBroadcast();
        return Zchnft;
    }
}

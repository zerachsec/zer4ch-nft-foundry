// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";
import {zer4chNFT} from "../src/Zer4ch-NFT.sol";

contract MintZchNft is Script {
    string public constant TOKEN =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("zer4chNFT", block.chainid);
        mintNftContract(mostRecentlyDeployed);
    }

    function mintNftContract(address contractAddress) public {
        vm.startBroadcast();
        zer4chNFT(contractAddress).mintNft(TOKEN);
        vm.stopBroadcast();
    }
}

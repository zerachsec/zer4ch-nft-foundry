// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {zer4chNFT} from "../src/Zer4ch-NFT.sol";
import {DeployZer4chNft} from "../script/DeployZer4chNft.s.sol";

contract Zer4chNftTest is Test {
    DeployZer4chNft public deployer;
    zer4chNFT public zchnft;
    address public USER = makeAddr("user");
    string public constant TOKEN =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";

    function setUp() external {
        deployer = new DeployZer4chNft();
        zchnft = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "zer4chNFT";
        string memory actualName = zchnft.name();
        assert(keccak256(abi.encodePacked(expectedName)) == keccak256(abi.encodePacked(actualName)));
    }

    function testCanMintAndHaveBalance() public {
        vm.prank(USER);
        zchnft.mintNft(TOKEN);
        assert(zchnft.balanceOf(USER) == 1);
        assert(keccak256(abi.encodePacked(TOKEN)) == keccak256(abi.encodePacked(zchnft.tokenURI(0))));
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/MyNFT.sol";

contract MyNFTTest is Test {
    MyNFT public nft;

    address owner = address(this);
    address recipient = address(0x123);

    function setUp() public {
        nft = new MyNFT();
    }

    function testMintNFT() public {
        string memory tokenURI = "https://example.com/metadata.json";

        uint256 tokenId = nft.mintNFT(recipient, tokenURI);
        assertEq(tokenId, 1);

        assertEq(nft.ownerOf(1), recipient);
        assertEq(nft.tokenURI(1), tokenURI);
    }
}

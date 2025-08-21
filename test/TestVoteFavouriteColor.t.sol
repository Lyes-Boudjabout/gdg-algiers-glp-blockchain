// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Test} from "forge-std/Test.sol";
import {DeployVoteFavouriteColor} from "../script/DeployVoteFavouriteColor.s.sol";
import {FavoriteColorVote} from "../src/VoteFavouriteColor.sol";

contract TestVoteFavouriteColor is Test {
    DeployVoteFavouriteColor deployer;
    FavoriteColorVote favouriteColorVote;
    address user = 0x70997970C51812dc3A010C7d01b50e0d17dc79C8;

    function setUp() external {
        deployer = new DeployVoteFavouriteColor();
        favouriteColorVote = deployer.run();
    }

    function testOwnerIsDeployer() public view {
        address actualOwner = favouriteColorVote.owner();
        address expectedOwner = 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266;
        assertEq(actualOwner, expectedOwner);
    }

    function testNotOwnerCantCallGetWinner() public {
        vm.prank(user);
        vm.expectRevert();
        favouriteColorVote.getWinner();
    }

    function testUserCantVoteTwice() public {
        vm.startPrank(user);
        favouriteColorVote.vote("Blue"); // no problem
        vm.expectRevert();
        favouriteColorVote.vote("Blue"); // can't vote twice
        vm.stopPrank();
    }

    function testOnlyValidColorAccepted() public {
        vm.prank(user);
        vm.expectRevert();
        favouriteColorVote.vote("Purple");
    }
}

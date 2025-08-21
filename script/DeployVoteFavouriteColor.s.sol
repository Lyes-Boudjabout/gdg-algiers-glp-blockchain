// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Script} from "forge-std/Script.sol";
import {FavoriteColorVote} from "../src/VoteFavouriteColor.sol";

contract DeployVoteFavouriteColor is Script {
    address public deployer = 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266;

    function run() public returns (FavoriteColorVote) {
        vm.startBroadcast(deployer);
        FavoriteColorVote favColorContract = new FavoriteColorVote();
        vm.stopBroadcast();
        return favColorContract;
    }
}

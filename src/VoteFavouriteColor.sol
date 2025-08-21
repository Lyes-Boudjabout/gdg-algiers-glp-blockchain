// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract FavoriteColorVote is Ownable {
    error FavoriteColorVote__UserAlreadyVoted();
    error FavoriteColorVote__InvalidColor();

    string[] public colors = ["Red", "Blue", "Green", "Yellow"];

    mapping(string => uint256) public votes;

    mapping(address => bool) public hasVoted;

    event Voted(address indexed voter, string color);

    constructor() Ownable(msg.sender) {
        for (uint256 i = 0; i < colors.length; i++) {
            votes[colors[i]] = 0;
        }
    }

    // memory vs calldata vs storage
    function vote(string memory _color) external {
        if (hasVoted[msg.sender]) {
            revert FavoriteColorVote__UserAlreadyVoted();
        }
        if (!validColor(_color)) {
            revert FavoriteColorVote__InvalidColor();
        }

        votes[_color] += 1;
        hasVoted[msg.sender] = true;

        emit Voted(msg.sender, _color);
    }

    function validColor(string memory _color) public view returns (bool) {
        for (uint256 i = 0; i < colors.length; i++) {
            if (keccak256(bytes(colors[i])) == keccak256(bytes(_color))) {
                return true;
            }
        }
        return false;
    }

    function getWinner() external view onlyOwner returns (string memory winner, uint256 count) {
        string memory currentWinner = colors[0];
        uint256 highestVotes = votes[currentWinner];

        for (uint256 i = 1; i < colors.length; i++) {
            if (votes[colors[i]] > highestVotes) {
                currentWinner = colors[i];
                highestVotes = votes[colors[i]];
            }
        }
        return (currentWinner, highestVotes);
    }
}

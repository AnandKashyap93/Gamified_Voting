// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {

    // Mapping to store the voting power of each user
    mapping(address => uint256) public votingPower;

    // Function to increase voting power
    function engage() public {
        votingPower[msg.sender] += 1;
    }

    // Function to check voting power
    function getVotingPower(address user) public view returns (uint256) {
        return votingPower[user];
    }
}

// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.18;

// This is a Simple Voting Contract
contract VotingSystem {
    mapping(string => uint256) public votes;

    function voteForYourCandidate(string memory candidateName) public {
        votes[candidateName]++;
    }

    function getVotesForCandidate(string memory candidateName) public view returns (uint256) {
        return votes[candidateName];
    }
}
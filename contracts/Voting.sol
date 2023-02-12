// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;
contract Voting {
    mapping (address => uint8) public votes;
    uint public totalVotes;
    uint public totalCandidate1Votes;
    uint public totalCandidate2Votes;

    function vote(uint8 candidate) public {
        require(candidate >= 1 && candidate <= 2, "Invalid candidate.");

        votes[msg.sender] = candidate;
        totalVotes++;
        if (candidate == 1) {
            totalCandidate1Votes++;
        } else {
            totalCandidate2Votes++;
        }
    }

    function getVoteCount(uint8 candidate) public view returns (uint) {
        if (candidate == 1) {
            return totalCandidate1Votes;
        } else {
            return totalCandidate2Votes;
        }
    }
}
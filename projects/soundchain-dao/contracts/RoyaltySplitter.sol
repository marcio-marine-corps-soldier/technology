// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RoyaltySplitter {

    struct Payee {
        address account;
        uint256 share;
    }

    Payee[] public payees;
    uint256 public totalShares;

    constructor(address[] memory accounts, uint256[] memory shares_) payable {
        require(accounts.length == shares_.length, "Invalid input");

        for (uint i; i < accounts.length; i++) {
            payees.push(Payee(accounts[i], shares_[i]));
            totalShares += shares_[i];
        }
    }

    receive() external payable {}

    function release() external {
        uint256 balance = address(this).balance;

        for (uint i; i < payees.length; i++) {
            uint256 payment = (balance * payees[i].share) / totalShares;
            payable(payees[i].account).transfer(payment);
        }
    }
}

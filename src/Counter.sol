// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) external {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function decrement() public {
        require(number > 0, "Below zero");
        number--;
    }
}

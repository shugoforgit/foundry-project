// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(5);
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 6);
    }

    // 减去
    function test_Decrement() public {
        counter.decrement();
        assertEq(counter.number(), 4);
    }


    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // To override a Parent Contract from a Child we need 2 things
    // override virtual



//  function sayHello() public pure returns(string memory) {
//     return "hello";
//  }

function store(uint _newNumber) public override {
    myfavouriteNumber = _newNumber + 5;
}

}


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {SimpleStorage} from "./SimpeStorage.sol";

contract AddFiveStorage is SimpleStorage {

    function store(uint256 _favoriteNumber) public override  {  
         favoriteNumber =_favoriteNumber + 5;
    }
}
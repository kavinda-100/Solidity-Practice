// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {SimpleStorage} from "./SimpeStorage.sol";

contract SorageFactory {

    SimpleStorage[] internal simpleStorageContacts; 

    function createSimpleStorageContract() public {
      SimpleStorage newSimpleStorage = new SimpleStorage();
      simpleStorageContacts.push(newSimpleStorage);    
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageFavoriteNumber) public {
        SimpleStorage simpleStorageIndex = simpleStorageContacts[_simpleStorageIndex];
        simpleStorageIndex.store(_newSimpleStorageFavoriteNumber);
    }

    function sfGetFavoriteNumber(uint256 _simpleStorageIndex) public view returns (uint256){
        SimpleStorage simpleStorageIndex = simpleStorageContacts[_simpleStorageIndex];
        return simpleStorageIndex.getFavoriteNumber();
    }
}
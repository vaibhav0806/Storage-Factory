// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorage() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _favouriteNumber) public {
        SimpleStorage simpleStorageContract = listOfSimpleStorageContracts[_simpleStorageIndex];
        simpleStorageContract.store(_favouriteNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleStorage simpleStorageContract = listOfSimpleStorageContracts[_simpleStorageIndex];
        return simpleStorageContract.retreive();
    }
}
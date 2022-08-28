// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./simple_storage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStorageArray;

    function creatSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Need Address and ABI (Application Binary Interface) to interact wit contract
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        simpleStorage.store(_simpleStorageNumber);
         
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        return simpleStorage.retrieve();
    }
}

// WITH INHERITANCE

// contract StorageFactory is SimpleStorage {

//     SimpleStorage[] public simpleStorageArray;

//     function creatSimpleStorageContract() public {
//         SimpleStorage simpleStorage = new SimpleStorage();
//         simpleStorageArray.push(simpleStorage);
//     }

//     function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
//         // Need Address and ABI (Application Binary Interface) to interact wit contract
//         SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
//         simpleStorage.store(_simpleStorageNumber);
         
//     }

//     function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
//         SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
//         return simpleStorage.retrieve();
//     }
// }
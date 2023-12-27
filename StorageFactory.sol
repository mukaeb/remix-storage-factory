// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from  "./SimpleStorage.sol";

contract StorageFactory {

    // uint256 public myfavoriteNumber
    // SimpleStorage public simpleStorage ; 
    SimpleStorage[] public listOfSimpleStorage ; 

    function createSimpleStorage() public {
        //Simple Storage كيف حيتعامل العقد مع عقد 
        // simpleStorage = new SimpleStorage();
        SimpleStorage simpleStorageContract = new SimpleStorage() ; 
        listOfSimpleStorage.push(simpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStoageNumber) public {
        //  العنوان 
        // ABI ألواجهة الثنائية للتطبيق 

        SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex] ; 
        mySimpleStorage.store(_simpleStoageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex] ; 
        return mySimpleStorage.retrieve();
    }
}
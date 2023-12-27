// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

//  الميراث

contract AddSeven is SimpleStorage {
    // التجاوز 
    // override virtual 

   function store(uint256 _newFavNumber) public override  {
    myFavoriteNumber = _newFavNumber + 7 ; 
   } 
}
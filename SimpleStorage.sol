// تعليق
// SPDX-License-Identifier: MIT

pragma solidity 0.8.18; //إصدار سوليتدي 

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    Person[] public listOfPeople;

    // khaled => 77
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual  {
        myFavoriteNumber = _favoriteNumber; //+7
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

   function retrivePure() public pure returns(uint256) {
          return 7 ; 
      }

    // calldata , memory, storage
    // array, struct or mapping 
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

contract SimpleStorage2 {}
contract SimpleStorage3 {}
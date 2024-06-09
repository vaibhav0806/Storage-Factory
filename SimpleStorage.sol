// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorage {
    struct Person {
        string name;
        uint256 favouriteNumber;
    }

    uint256 favouriteNumber;

    mapping(string => uint) public nameToFavNumber;

    Person[] public listOfPersons;

    function addPerson(string memory _name, uint256 _favNumber) public {
        listOfPersons.push(Person(_name, _favNumber));
        nameToFavNumber[_name] = _favNumber;
    }

    function store(uint256 _favouriteNumber) public virtual {
        favouriteNumber = _favouriteNumber;
    }

    function retreive() public view returns (uint256) {
        return favouriteNumber;
    }

}
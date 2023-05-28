// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    uint256 public favouriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }
    People[] public people;

    function Store (uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        People memory newPerson = People( _favouriteNumber,  _name );
        people.push(newPerson);
    }
}
// 0xd9145CCE52D386f254917e481eB44e9943F39138
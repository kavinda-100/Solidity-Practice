// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SimpleStorage {

    uint256 internal favoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] internal peopleArray;

    mapping (string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {  
         favoriteNumber =_favoriteNumber;
    }


    function getFavoriteNumber() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(uint256 _favoriteNumber, string memory name) public {
        // Person memory newPerson = Person({ 
        //     favoriteNumber: _favoriteNumber,
        //     name : name
        // });
        // peopleArray.push(newPerson);
        peopleArray.push(Person(_favoriteNumber, name));
        nameToFavoriteNumber[name] = _favoriteNumber;
    }

    function getPeople() public view returns (Person[] memory) {
         return peopleArray;
    }

    function getFavoriteNumberByName(string memory _name) public view returns(uint256){
        return nameToFavoriteNumber[_name];
    }
}
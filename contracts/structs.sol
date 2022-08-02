//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract structs {
    struct human {
        string name;
        string surname;
        uint age;
        address walletID;
    }

human human1;

    function humanDetails(uint _age, string memory _name, string memory _surname, address _walletID) public {
        human1 = human(_name, _surname, _age, _walletID);
    }

    function showHuman() public view returns (string memory, string memory, uint, address){
        return (human1.name, human1.surname, human1.age, human1.walletID);
    }
    
}
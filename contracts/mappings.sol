// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract mappings {

    mapping(address => bool) public registeredUsers;
    mapping(address => uint256) public favNum;

    function register(uint256 _favNum) public {
        require(!registeredUsers[msg.sender], "Kayit yok");
        registeredUsers[msg.sender] = true;
        favNum[msg.sender] = _favNum;
    }

    function deleteRegister() public {
        require(registeredUsers[msg.sender]);
        delete(registeredUsers[msg.sender]);
        delete(favNum[msg.sender]);
    }

}

contract NestedMapping {

    mapping(address => mapping(address => uint256)) public debts;

    function incDebts(address borrower, uint256 _debt) public {
        debts[msg.sender][borrower] += _debt;
    }

    function decDebts(address borrower, uint256 _debt) public {
        require(debts[msg.sender][borrower] >= _debt, "not enough debts");
        debts[msg.sender][borrower] -= _debt;
    }

    function getDebt(address borrower) public view returns(uint256){
        return debts[msg.sender][borrower];
    }

}

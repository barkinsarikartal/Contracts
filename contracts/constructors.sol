// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract constructors {

    struct user{
        address username;
        bytes32 password;
    }
    user user1;

    constructor(address _username, string memory _password){
        user1.username = _username;
        user1.password = keccak256(abi.encode(_password));
    }
    function login (address _username, string memory _password) public view returns(bool){
       return (_username == user1.username && user1.password == keccak256(abi.encode(_password)));
       
    }
}

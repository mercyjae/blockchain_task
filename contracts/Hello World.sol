// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract HelloWorld{
    string public studentName;
    uint public height;
    string public introduction = "Welcome";


    constructor(string memory firstName){
        studentName = firstName;
    }

    function createName(string memory newName) public {
        studentName = newName;
    }
    function  createHeight(uint newHeight) public {
        height = newHeight;
    
    }
    function getName() public view returns(string memory){
        return string(abi.encodePacked(introduction, studentName));
    }
    function getHeight() public view returns(uint){
        return height;
    }
}
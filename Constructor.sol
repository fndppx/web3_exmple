// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.20;

contract X {
    string public name;
    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;
    constructor(string memory _text) {
        text = _text;
    }
}

contract B is X("Input to X"), Y("Input to Y") {}

contract C is X, Y {
    // Pass the parameters here in the constructor,
    // similar to function modifiers.
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

contract D is X, Y {
    constructor() X("X was called") Y("Y was called") {}
}

contract E is X, Y {
    constructor() Y("Y was called") X("X was called") {}
}
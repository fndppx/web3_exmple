// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.20;

contract Immutable {

    address public immutable MY_ADDRESS;
    uint256 public immutable MY_UINT;
    
    constructor(uint256 _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}
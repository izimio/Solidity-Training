// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;


contract Useless {
    address public uwu;
    mapping(uint => address) public coucou;
}

contract HugeContract {
    mapping(uint => mapping (address => uint) ) public comucou;
    mapping(uint => mapping (address => uint) ) public coducou;
    mapping(uint => mapping (address => uint) ) public coudcou;
    mapping(uint => mapping (address => uint) ) public coucoud;
    mapping(uint => mapping (address => uint) ) public coducoud;
    mapping(uint => mapping (address => uint) ) public cocou;

}
contract CodeSize is Useless, HugeContract {
    address public owner;
    uint public tm1 = 4;
    uint public tm2 = 4;
    uint public tm3 = 4;
    uint public tm4 = 4;
    uint public tm5 = 4;

    modifier lul() {
        require(1 == 1);
        _;
    }
    constructor () {
        owner = msg.sender;

    }

    function switchOwner(address _newOnwer) external returns (bool) {
        require(_newOnwer != address(0), "Really ?");
        owner = _newOnwer;
        return true;
    }

    function useLessFnc(address _newOnwer) external returns (bool) {
        require(_newOnwer != address(0), "Really ?");
        owner = _newOnwer;
        return true;
    }

    function useLessFnct(address _newOnwer) external returns (bool) {
        require(_newOnwer != address(0), "Really ?");
        owner = _newOnwer;
        return true;
    }

    function doALotOfUselessThing(uint256 lol, uint256 ptrdr) external pure returns (bool, uint) {
        require(address(1) != address(0), "Really ?");
        lol = 5;
        ptrdr = 10;
        require(address(1) != address(0), "Really ?");
        lol = 11;
        ptrdr = 14;
        return (lol == ptrdr, lol + ptrdr);
    }

    function dddd(uint256 lol, uint256 ptrdr) external pure returns (bool, uint) {
        require(address(1) != address(0), "Really ?");
        lol = 5;
        ptrdr = 10;
        require(address(1) != address(0), "Really ?");
        lol = 11;
        ptrdr = 14;
        return (lol == ptrdr, lol + ptrdr);
    }

}

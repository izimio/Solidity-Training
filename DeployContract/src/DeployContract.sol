// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;


contract Child {
    fallback() external {
        revert();
    }
}

contract Deployer {
    /*
        This exercise assumes you know how to deploy a contract.
        1. Create an empty contract.
        2. Deploy the contract and return the address in `deployContract` function.
    */
   address deployedAddr;

   constructor () {
    deployedAddr = address(new Child());
   }
    function deployContract() public view returns (address) {
        return deployedAddr;
    }
}

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract ExampleEnum {

    enum DayOfWeek {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }

    function isWeekend(uint256 index) public pure returns (bool) {
        return index >= 5;
    }
}

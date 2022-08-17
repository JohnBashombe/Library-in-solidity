// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./Math.sol";

contract MyContract {
    using Math for uint256;
    using Math for int256;

    uint256 public divide_;
    uint256 public add_;
    uint256 public sub_;
    uint256 public mult_;
    uint256 public mod_;
    uint256 public sqrt_;
    uint256 public pow_;

    int256 public abs_;

    function calculate(
        uint256 _value1,
        uint256 _value2,
        int256 _value3
    ) public {
        divide_ = _value1.divide(_value2);
        add_ = _value1.add(_value2);
        sub_ = _value1.subtract(_value2);
        mult_ = _value1.multiply(_value2);
        mod_ = _value1.modulus(_value2);
        sqrt_ = _value1.sqrt();
        abs_ = _value3.abs();
        pow_ = _value1.pow(_value2);
    }
}

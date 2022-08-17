// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

library Math {
    // Division
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b > 0, "Division by zero is prohibited");
        uint256 c = a / b;
        return c;
    }

    // Addition
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Multiply
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        if (a == 0 || b == 0) return 0;
        return a * b;
    }

    // Subtraction
    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        if (b == 0) return a;
        uint256 c = a - b;
        require(c >= 0, "Invalid Arguments");
        return c;
    }

    // Modulus
    function modulus(uint256 a, uint256 b) public pure returns (uint256) {
        require(a > 0, "Invalid Arguments");
        return a % b;
    }

    // Square root
    function sqrt(uint256 a) public pure returns (uint256 c) {
        uint256 b = (a + 1) / 2;
        c = a;
        while (b < c) {
            c = b;
            b = (a / b + b) / 2;
        }
    }

    // Absolute value
    function abs(int256 a) public pure returns (int256) {
        if (a == 0) return 0;
        if (a < 0) return a * -1;
        else return a;
    }

    // power of a to b
    function pow(uint256 a, uint256 b) public pure returns (uint256) {
        return a**b;
    }
}

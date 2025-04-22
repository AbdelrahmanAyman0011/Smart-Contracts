// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleMathOperations {
    int256 public A;
    int256 public B;

    event VariablesStored(int256 a, int256 b);
    event SumCalculated(int256 sum);
    event DifferenceCalculated(int256 difference);
    event ProductCalculated(int256 product);
    event QuotientCalculated(int256 quotient);

    constructor(int256 _a, int256 _b) {
        A = _a;
        B = _b;
        emit VariablesStored(A, B);
    }

    function setA(int256 _a) public {
        A = _a;
        emit VariablesStored(A, B);
    }

    function setB(int256 _b) public {
        B = _b;
        emit VariablesStored(A, B);
    }

    function getA() public view returns (int256) {
        return A;
    }

    function getB() public view returns (int256) {
        return B;
    }

    function calculateSum() public returns (int256) {
        int256 sum = A + B;
        emit SumCalculated(sum);
        return sum;
    }

    function calculateDifference() public {
        int256 difference = A - B;
        emit DifferenceCalculated(difference);
    }

    function calculateProduct() public {
        int256 product = A * B;
        emit ProductCalculated(product);
    }
    function calculateQuotient() public {
        require(B != 0, "Division by zero is not allowed");
        int256 quotient = A / B;
        emit QuotientCalculated(quotient);
    }
}

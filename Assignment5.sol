// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleMathOperations {
    int256 public A;
    int256 public B;

    // Event declarations
    event VariablesStored(int256 a, int256 b);
    event SumCalculated(int256 sum);
    event DifferenceCalculated(int256 difference);
    event ProductCalculated(int256 product);
    event QuotientCalculated(int256 quotient);

    // Constructor to initialize the variables
    constructor(int256 _a, int256 _b) {
        A = _a;
        B = _b;
        emit VariablesStored(A, B);
    }

    // Setter functions
    function setA(int256 _a) public {
        A = _a;
        emit VariablesStored(A, B);
    }

    function setB(int256 _b) public {
        B = _b;
        emit VariablesStored(A, B);
    }

    // Getter functions
    function getA() public view returns (int256) {
        return A;
    }

    function getB() public view returns (int256) {
        return B;
    }

    // Function to calculate the sum
    function calculateSum() public {
        int256 sum = A + B;
        emit SumCalculated(sum);
    }

    // Function to calculate the difference
    function calculateDifference() public {
        int256 difference = A - B;
        emit DifferenceCalculated(difference);
    }

    // Function to calculate the product
    function calculateProduct() public {
        int256 product = A * B;
        emit ProductCalculated(product);
    }

    // Function to calculate the quotient
    function calculateQuotient() public {
        require(B != 0, "Division by zero is not allowed");
        int256 quotient = A / B;
        emit QuotientCalculated(quotient);
    }
}
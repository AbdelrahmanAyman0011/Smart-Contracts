// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract to perform basic arithmetic operations on two variables and emit results
contract ArithmeticOperations {
    // State variables to store A and B
    uint256 private A;
    uint256 private B;

    // Events for each operation
    event ValuesStored(uint256 a, uint256 b);
    event SumCalculated(uint256 sum);
    event DifferenceCalculated(uint256 difference);
    event ProductCalculated(uint256 product);
    event QuotientCalculated(uint256 quotient);

    // Constructor to initialize A and B
    constructor(uint256 _a, uint256 _b) {
        A = _a;
        B = _b;
        emit ValuesStored(A, B);
    }

    // Setter function for A
    function setA(uint256 _a) public {
        A = _a;
        emit ValuesStored(A, B);
    }

    // Setter function for B
    function setB(uint256 _b) public {
        B = _b;
        emit ValuesStored(A, B);
    }

    // Getter function for A
    function getA() public view returns (uint256) {
        return A;
    }

    // Getter function for B
    function getB() public view returns (uint256) {
        return B;
    }

    // Function to calculate and emit sum
    function calculateSum() public {
        uint256 sum = A + B;
        emit SumCalculated(sum);
    }

    // Function to calculate and emit difference (A - B)
    function calculateDifference() public {
        uint256 difference = A - B;
        emit DifferenceCalculated(difference);
    }

    // Function to calculate and emit product
    function calculateProduct() public {
        uint256 product = A * B;
        emit ProductCalculated(product);
    }

    // Function to calculate and emit quotient (A / B)
    function calculateQuotient() public {
        require(B != 0, "Cannot divide by zero");
        uint256 quotient = A / B;
        emit QuotientCalculated(quotient);
    }
}

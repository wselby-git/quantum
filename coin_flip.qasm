OPENQASM 2.0;
include "qelib1.inc";

qreg q[1];
creg c[1];

// Apply a Hadamard gate to the qubit
h q[0];

// Measure the qubit and store the result in the classical register
measure q[0] -> c[0];

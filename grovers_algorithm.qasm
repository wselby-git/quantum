OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[2];

// Hadamard gates on qubits
h q[0];
h q[1];

// Oracle: set 00 and 11 to -1
x q[0];
x q[1];
cz q[0],q[1];
x q[0];
x q[1];

// Grover iteration (inverse qft)
h q[0];
h q[1];
cu1(pi/4) q[1],q[0];
h q[1];
cu1(pi/2) q[1],q[0];
h q[1];
cu1(pi/4) q[1],q[0];
h q[0];
h q[1];

//Measurement
measure q[0] -> c[0];
measure q[1] -> c[1];

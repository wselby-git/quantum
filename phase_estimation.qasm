OPENQASM 2.0;
include "qelib1.inc";

//Define qubits
qreg q[2];
creg c[2];

//Apply Hadamard gates to the first qubit
h q[0];

//Apply controlled-U gate with control qubit q[0] and target qubit q[1]
cu3(pi/2, 0, 0) q[0], q[1];

//Apply Hadamard gate to the first qubit
h q[0];

//Measure the first qubit
measure q[0] -> c[0];

//Measure the second qubit
measure q[1] -> c[1];

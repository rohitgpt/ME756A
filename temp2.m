A = [0 1 0; 0 0 1; -6 -11 -6;];
B = [0; 0; 1;];
C = [B A*B A*A*B];
O = [C C*A C*A*A]'
rank(O)
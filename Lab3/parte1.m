num1 = [1];
den1 = [1,1];
num2 = [2];
den2 = [1,-4];

[A,B,C,D] = FtoM(num1,den1,num2,den2)

%ahora se obtienen las funciones de transferencia
[H] = MtoTF(A,B,C,D)
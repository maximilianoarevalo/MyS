function[H] = MtoTF(A,B,C,D)

%se tienen las ecuaciones del modelo anterior
%X* = AX + BU
%Y = CX + DU
%Aplicando transformada de Laplace queda
%sX = AX + BU (no se considera condicion inicial)
matriz_identidad = [1 0;0 1];
syms s

aux1 = s*matriz_identidad - A;
aux1_inv = inv(aux1);
aux2 = C * aux1_inv;
%se obtiene la funcion de trasferencia H
H = aux2*B;


end
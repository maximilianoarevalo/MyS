function[A,B,C,D]=FtoM(num1,den1,num2,den2)
%se hacen las funciones de transferencia


%se inician matrices
A=zeros(2,2);
B=zeros(2,1);
C=zeros(1,2);
D=0;

%se despejan filas de la matriz A
%se divide por todo el denominador
%esta ecuacion tiene la forma de
%X1 = H (U-X2) siendo H la funcion de transferencia
%se debe dejar a un lado X1*s
%se cambia el signo por motivos de despeje
A(1,1)= num1(1)/den1(1) * (-1);
A(1,2)= den1(2)/den1(1) * (-1);

%se realiza lo mismo para la ecuacion dos
A(2,1)= num2(1)/den2(1);
A(2,2)= den2(2)/den2(1) * (-1);

%como solo la primera ecuacion tiene y la matriz B queda
%vector columna B = [1 0]
B(1,1)=1;
B(2,1)=0;
%Modelo de salida
%En el caso de la salida, C siempre es igual
C(1,1)=1;
C(1,2)=0;
D=0;
end
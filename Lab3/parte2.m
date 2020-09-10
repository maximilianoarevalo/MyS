%Parte 2: 

%Donde:
%F1: Flujo de entrada y salida del estanque 1
%F2: Flujo de salida del estanque 2
%h1: Nivel de agua del estanque 1
%h2: Nivel de agua del estanque 2
%A1: Area de superficie del estanque 1
%A2: Area de superficie del estanque 2

%La variable de entrada es F1 (u)
%Las variables de salida son h1 y h2 (y1 y2)
%Las variables de estado son h1 y h2 (x1 x2)

%Se crean variables simbolicas para que MATLAB las reconozca
syms dh1 dh2 h1 h2 F1 F2 A1 A2

%Diferencias entre volumenes de los estanques:
x1 = F1 - F1;
x2 = F1 - F2;

%Representacion matricial:
%Se conoce que el modelo de estado esta compuesto por:
%X. = AX + Bu
%Y = CX + Du
%Recordar que F1 = u

%Variables de estado:
disp('Representacion matricial de variables de estado:')
X = [(-1/A1) (1/A1);(1/A2) (-1/A2)]*[x1;x2] + [(1/A1);0]*F1;
pretty(X)
%Variables de salida:
disp('Representacion matricial de variables de salida:')
Y = [1 0; 0 1]*[x1;x2] + [0;0]*F1;   
pretty(Y)

%Por lo que las matrices corresponden a:
% A = [(-1/A1) (1/A1);(1/A2) (-1/A2)];
% X = [x1;x2];
% B = [(1/A1);0];
% C = [1 0; 0 1];
% D = [0;0]

%%% Ahora se realizaran los tres casos diferentes %%%

%Caso 1:
F11 = 50;
A11 = 3;
A21 = 4;
h21 = 30;
F21 = h21;
x11 = F11 - F11;
x21 = F11 - F21;
disp('Variacion del nivel del agua del segundo estanque:')
Xcaso1 = [(-1/A11) (1/A11);(1/A21) (-1/A21)]*[x11;x21] + [(1/A11);0]*F11;
disp(Xcaso1);
Ycaso1 = [1 0; 0 1]*[x11;x21] + [0;0]*F11; 
disp(Ycaso1);

%Caso 2:

%Caso 3:


%%% Ejemplo visto en la clase 17 - 11/08/2020 %%%


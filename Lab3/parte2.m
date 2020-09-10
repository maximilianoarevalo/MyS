%Parte 2: 

%Donde:
%F1: Flujo de entrada y salida del estanque 1
%F2: Flujo de salida del estanque 2
%h1: Nivel de agua del estanque 1
%h2: Nivel de agua del estanque 2
%A1: Area de superficie del estanque 1
%A2: Area de superficie del estanque 2

%La variable de entrada es F1
%La variable de salida es F2
%Las variables de estado son h1 y h2 

%Se definen variables simbolicas para que MATLAB las reconozca
syms dh1 dh2 h1 h2 F1 F2 A1 A2

%%% Se procede a elaborar el modelo fenomenologico:

%dh1 / dt = F1 - F1 => 0 => 0*h1 + 0*h2 + 0*u
%dh2 / dt = F1 - F2 => 0*h1 - 1/A2 * h2 + 1/A2 * u
%F1 = h1 - h2
%F2 = h2
%V1 = A1*h1
%V2 = A2*h2
%F2 = h2 = y = 0*h1 + 1*h2 + 0*u

%De lo anterior se obtiene que:
dh1 = F1/A1 - F1/A1; 
dh2 = F1/A2 - F2/A2;
y = h2;

%Representacion matricial:
%Matriz variable de estado
X = [0 0;0 -1/A2]*[h1;h2] + [0;1/A2]*F1;
disp('Representacion matricial de variables de estado:')
disp('[dh1;dh2] =')
pretty(X);
%Matriz de salida
Y = [0 1]*[h1;h2];
disp('Representacion matricial de variables de salida:')
disp('[y] =')
pretty(Y);

%%%%% Casos %%%%%
disp('Casos:')
%Caso 1:
disp('Caso 1, con F1 = 50, A2 = 25, h2 = 50 :')
F11 = 50;
A21 = 25;
h21 = 50;
F21 = h21;
dh21 = F11/A21 - F21/A21;
y11 = h21;
disp('El estanque 2 varia a:')
disp(dh21)
disp('La salida es de:')
disp(y11)

%Caso 2:
disp('Caso 2, con F1 = 100, A2 = 35, h2 = 75 :')
F12 = 100;
A22 = 35;
h22 = 75;
F22 = h22;
dh22 = F12/A22 - F22/A22;
y12 = h22;
disp('El estanque 2 varia a:')
disp(dh22)
disp('La salida es de:')
disp(y12)

%Caso 3:
disp('Caso 3, con F1 = 30, A2 = 28, h2 = 110 :')
F13 = 30;
A23 = 28;
h23 = 110;
F23 = h22;
dh23 = F13/A23 - F23/A23;
y13 = h23;
disp('El estanque 2 varia a:')
disp(dh23)
disp('La salida es de:')
disp(y13)

%%%%% Ejemplo visto en la clase 17 - 11/08/2020  %%%%%
disp('Ejemplo visto en clases:')
% Informacion del problema:
% A1 = Area de superficie del estanque 1
% A2 = Area de superficie del estanque 2
% R1 = Resistencia de la valvula 1
% R2 = Resistencia de la valvula 2
% F0 = Flujo de entrada del estanque 1
% F1 = Flujo de saluda del estanque 1 y entrada del estanque 2
% F2 = Flujo de salida del estanque 2
% l1 = Nivel de agua del estanque 1
% l2 = Nivel de agua del estanque 2

%Se definen variables simbolicas para que matlab las reconozca
syms A1e A2e R1 R2 l1 l2 F0

%Modelo fenomenologico:
% dh1 / dt = F0 - F1
% dh2 / dt = F1 - F2
% F1 = l1 - l2 / R1
% F2 = l2 / R2
% V1 = A1*l1
% V2 = A2*l2

%La variable de entrada es F0
%Las variable de salida son l1 y l2
%Las variables de estado son l1 y l2 

%Datos:
A1e = 2;
A2e = 4;
R1 = 1/4;
R2 = 1/16;

%De lo anterior se obtiene que:
F1e = (l1 - l2)/R1;
F2e = l2/R2;

%Representacion matricial:
%Matriz variable de estado
Xe = [-1/A1e*R1 1/A1e*R2;1/A2e*R1 -1/A2e*(R1+R2)]*[l1;l2] + [1/A1e;0]*F0;
disp('[dl1;dl2] =')
pretty(Xe);
%Matriz de salida
Ye = [1 0;0 1]*[l1;l2] + [0;0]*F1e;
disp('Representacion matricial de variables de salida:')
disp('[y] =')
pretty(Ye);
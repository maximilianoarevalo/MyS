%Parte 1
%Algunas lineas de codigo para los graficos se encuentran comentadas para
%evitar confusiones, por lo que se aconseja descomentarlas para analizar
%cada grafico requerido

%Funcion 1
%Definicion de numerador y denominador funcion de transferencia
num1 = [4,0];
den1 = [3,1];
%Definicion de la funcion de transferencia 1
sys1 = tf(num1,den1);
%Grafico step lazo abierto
step(sys1);
%title("Función de transferencia 1: Lazo Abierto");
%grid on
%Grafico step lazo cerrado utilizando cloop
[num1_2,den1_2] = cloop (num1,den1);
step(num1_2,den1_2);
%title("Función de transferencia 1: Lazo Cerrado");
%grid on

%Funcion 2
%Definicion de numerador y denominador funcion de transferencia
num2 =[5,7,4] ;
den2 =[1,6,3] ;
%Definicion de la funcion de transferencia 2
sys2 = tf(num2,den2);
%Grafico step lazo abierto
step(sys2);
%title("Función de transferencia 2: Lazo Abierto");
%grid on
%Grafico step lazo cerrado utilizando cloop
[num2_2,den2_2] = cloop(num2,den2);
step(num2_2,den2_2);
%title("Función de transferencia 2: Lazo Cerrado");
%grid on

%Funcion 3
%Definicion de numerador y denominador funcion de transferencia
num3 = [0,0,12,0];
den3 = [1,7,0,-4];
%Definicion de la funcion de transferencia 3
sys3 = tf(num3,den3);
%Grafico step lazo abierto
step(sys3);
%title("Función de transferencia 3: Lazo Abierto");
%grid on
%Grafico step lazo cerrado utilizando cloop
[num3_2,den3_2] = cloop(num3,den3);
step(num3_2,den3_2);
%title("Función de transferencia 3: Lazo Cerrado");
%grid on

%Informacion para el cuadro comparativo:
%Ceros de las funciones
[z,gain] = zero(sys1);
[z,gain] = zero(sys2);
%Polos de las funciones
pole1 = pole(sys1);
pole2 = pole(sys2);
%Informacion de los sistemas
s1 = stepinfo(sys1);
s2 = stepinfo(sys2);


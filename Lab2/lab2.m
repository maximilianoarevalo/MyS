%Funcion 1
num1 = [0 0 4 0];
den1 = [0 10 0 4];

%Funcion 2
num2 = [0 0 0 3];
den2 = [0 0 6 16];

%Funcion 3
num3 = [0 0 4 10];
den3 = [4 9 5 0];

%Funcion 4
num4 = [0 0 0 1];
den4 = [0 0 7 10];

%Funcion 5
num5 = [0 0 8 8];
den5 = [1 2 3 0];

%Funcion 6
num6 = [0 0 3 2];
den6 = [0 5 7 10];

[n1, d1] = parallel(num1,den1,num2,den2);
[n2, d2] = feedback(num3,den3);
[n3, d3] = parallel(num4,den4,num5,den4);
[n4, d4] = series(n3,d3,num6,den6);
[n5, d5] = parallel(num2,den2,num3,den3);



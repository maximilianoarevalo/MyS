%%parte 1
%funcion 1
num1 = [4,0];
den1 = [3,1];
sys1 = tf(num1,den1);
step(sys1);
[num1_2,den1_2] = cloop (num1,den1);
step(num1_2,den1_2);

%funcion 2
num2 =[5,7,4] ;
den2 =[1,6,3] ;
sys2 = tf(num2,den2);
step(sys2);
[num2_2,den2_2] = cloop(num2,den2);
step(num2_2,den2_2);
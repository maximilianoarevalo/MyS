format
%Laboratorio 1 Modelacion y Simulacion 1-2020
%Integrantes: Maximiliano Arevalo - Benjamin Muñoz

%--------------------------Primera parte-------------------------
%Graficar las funciones por separado:

%a(x) = 8log5(4x+12) (en rojo con *) intervalo [0,15pi] espacio de 0.01
x1 = 0:0.01:15*pi;
a = 8*(log(4*x1+12)/log(5)); %se aplica la propiedad de logaritmo para obtener log5(x)

%Grafico de la primera funcion
figure
plot(x1,a,'r *');
title('Función a(x) = 8log5(4x+12)');
ylabel('y');
xlabel('x');
%plot(x1,a,'r *');


%b(x) = sen(6(log2(x+9))) + cos(7(log6(4x+32))) (en verde con +)
x2 = 0:0.01:15*pi;
b = sin(6*(log2(x2+9))) + cos(7*(log(4*x2+32)/log(6)));

%Grafico de la segunda funcion
figure
plot(x2,b,'g +');
title ('Función b(x) = sen(6(log2(x+9))) + cos(7(log6(4x+32)))');
ylabel('y');
xlabel('x');




%Ambos juntos
figure
hold on;
title('Función a(x) y Función b(x)');
plot(x1,a,'r *');

plot(x2,b,'g +');
legend('a(x)','b(x)');
hold off;


%Escala normal
x3 = -10:0.05:10;
c = 6 * exp(x3+18);
figure
plot(x3,c,'g+');
title('Función 6*exp(x+18) Escala normal');
ylabel('y');
xlabel('x');
grid on;
%Escala logaritmica
figure
semilogy(x3,c,'r-');
title('Función 6*exp(x+18) Escala Logarítmica');
ylabel('y');
xlabel('x');
grid on;


%f1 = @(x) x^3 - 3*x + 2;
%xOut = newtonRaphson(f1,15,10^-8,5);
%xOut

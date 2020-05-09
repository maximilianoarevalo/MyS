%Laboratorio 1 Modelacion y Simulacion 1-2020
%Integrantes: Maximiliano Arevalo - Benjamin Muñoz

%--------------------------Primera parte-------------------------
%Graficar las funciones por separado:

%a(x) = 8log5(4x+12) (en rojo con *) intervalo [0,15pi] espacio de 0.01
x1 = 0:0.01:15*pi;
a = 8*(log(4*x1+12)/log(5)); %se aplica la propiedad de logaritmo para obtener log5(x)
title('Función a(x) = 8log5(4x+12)');
ylabel('Eje y');
xlabel('Eje x');
%plot(x1,a,'r *');


%b(x) = sen(6(log2(x+9))) + cos(7(log6(4x+32))) (en verde con +)
x2 = 0:0.01:15*pi;
b = sin(6*(log2(x2+9))) + cos(7*(log(4*x2+32)/log(6)));
title ('Función b(x) = sen(6(log2(x+9))) + cos(7(log6(4x+32)))');
ylabel('Eje y');
xlabel('Eje x');
%plot(x2,b,'g +');

%Grafico de la primera funcion
figure(1);
plot(x1,a,'r *');
%Grafico de la segunda funcion
figure(2);
plot(x2,b,'g +');
%Ambos juntos
figure(3);
plot(x1,a,'r *');
hold on
plot(x2,b,'g +');
hold off
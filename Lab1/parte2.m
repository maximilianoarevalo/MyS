syms x
%Se solicita el polinomio
c_polinomio = 'Ingrese el polinomio como vector:';
v_polinomio = input(c_polinomio);

%Se solicita el numero de iteraciones
c_iteraciones = 'Ingrese el numero de iteraciones:';
iteraciones = input(c_iteraciones);

%Se solicita el error
c_error = 'Ingrese el error:';
error = input(c_error);

%Se solicita el valor inicial x0
c_valorI = 'Ingrese el valor inicial x0:';
valorI = input(c_valorI);

%Se ejecuta el algoritmo de Newton Raphson
salida = newtonRaphson(v_polinomio,iteraciones,error,valorI);
salida


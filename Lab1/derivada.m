function[xOut] = derivada(polinomio,x0)
syms x;
derivado(x) = diff(polinomio,x);
salida = derivado(2);
xOut = salida;
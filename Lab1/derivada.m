function[xOut] = derivada(polinomio,x0)
syms x;
derivado(x) = diff(polinomio,x);
salida = derivado(x0);
xOut = salida;
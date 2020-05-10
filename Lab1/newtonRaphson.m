function xOut = newtonRaphson(polinomio,iteraciones,error,x0);
evaluado = polinomio(x0);

i = 0;
derivado = derivada(polinomio,x0);
while i<iteraciones
    xsig = x0 - (evaluado/derivado);
    x0 = xsig;
    evaluado = polinomio(x0);
    derivado = derivada(polinomio,x0);
    error = abs(evaluado);
    xOut=xsig;
    
    i = i+1;
end
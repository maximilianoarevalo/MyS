function xOut = newtonRaphson(polinomio,iteraciones,error,x0)
i = 0;
e = error + 1;
xa = x0;

while i < iteraciones && e > error
    eva = polyval(polinomio,xa);
    derivate = polyder(polinomio);
    der = polyval(derivate,xa);
    xs = xa - (eva) / (der);
    e = abs(xs - xa);
    xa = xs;
    i = i + 1;
end
resultado = xs;
%Se adapta el resultado para mostrarlo luego
resultado_double = double(resultado);
xOut = vpa(resultado_double);
end
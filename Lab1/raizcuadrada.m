%Se solicita el tamaño del vector
elements = input('Ingrese el tamaño del vector = ');
n = 1;
%Se obtienen los valores
while n <= elements
  vector_in(1,n)=input(sprintf('Ingrese el valor del elemento %d: ',n));
  n = n+1;
end

%raiz cuadrada de la suma de los 4 elementos de mayor valor
maximo = maxk(vector_in,4);
sum1 = sum(maximo);
%Se valida el valor para no calcular raíces complejas
if (sum1 < 0)
    error("La suma de los 4 valores maximos es negativa, la raiz es compleja");
end
raiz4max = sqrt(sum1)

%raiz cuadrada de la suma de los 4 elementos de menor valor
minimo = mink(vector_in,4);
sum2 = sum(minimo);
%Se valida el valor para no calcular raíces complejas
if (sum2 < 0)
    error("La suma de los 4 valores minimos es negativa, la raiz es compleja");
end
raiz4min = sqrt(sum2)

%Se entrega el resultado final
resultado = raiz4max - raiz4min








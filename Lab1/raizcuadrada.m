entrada = 'Ingrese el  vector:';
vector_in = input(entrada);

%raiz cuadrada de la suma de los 4 elementos de mayor valor
maximo = maxk(vector_in,4);
sum1 = sum(maximo);
raiz4max = sqrt(sum1)

%raiz cuadrada de la suma de los 4 elementos de menor valor
minimo = mink(vector_in,4);
sum2 = sum(minimo);
raiz4min = sqrt(sum2)

resultado = raiz4max - raiz4min








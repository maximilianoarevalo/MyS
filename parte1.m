%Funcion 2
numf2 = [5 7 4];
denf2 = [1 6 3];
sys = ss(numf2,denf2);
resultado = step(sys);


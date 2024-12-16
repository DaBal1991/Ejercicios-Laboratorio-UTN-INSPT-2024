Algoritmo sin_titulo
	
	// Dado un vector V de n componentes enteras (n<=30), genere e imprima 2 vectores VP y VI
	// que contenga respectivamente las componentes de índices pares e impares respectivamente.
	
	Definir N, vec, contadorImpar, contadorPar Como Entero;
	
	Imprimir "Ingrese N cantidad de valores deseados: ";
	Leer N;
	
	Dimension vec[N];
	
	llenarVector(vec, N);
	mostrarVector(vec, N);
	Imprimir "-------------------------------";
	contadorImpar = contarImpares(vec, N);
	contadorPar = contarPares(vec, N);
	generarVectores(vec, N, contadorPar, contadorImpar);
	
	
FinAlgoritmo

Funcion generarVectores(vec, N, contadorPar, contadorImpar)
	
	Definir i, j, k, vectorPar, vectorImpar Como Entero;
	
	Dimension vectorPar[contadorPar];
	Dimension vectorImpar[contadorImpar];
	
	Para i = 0 Hasta N-1 Hacer
		Si vec[i] mod 2 == 0 Entonces
			vectorPar[j] = vec[i];
			j = j + 1;
		SiNo
			vectorImpar[k] = vec[i];
			k = k + 1;
		FinSi
	FinPara
	
	Imprimir "Pares: ";
	mostrarVector(vectorPar, contadorPar);
	Imprimir "----------------------------";
	Imprimir "Impares: ";
	mostrarVector(vectorImpar, contadorImpar);
	
FinFuncion

Funcion llenarVector(vec, N) 
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		vec[i] = Aleatorio(1, 100);
	FinPara
	
FinFuncion

Funcion mostrarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir vec[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
FinFuncion

Funcion contadorImpar = contarImpares(vec, N)
	
	Definir i, contadorImpar como entero;
	
	Para i = 0 Hasta N-1 Hacer
		Si vec[i] mod 2 <> 0 Entonces
			contadorImpar = contadorImpar + 1;
		FinSi
	FinPara
	
FinFuncion

Funcion contadorPar = contarPares(vec, N)
	
	Definir i, contadorPar como entero;
	
	Para i = 0 Hasta N-1 Hacer
		Si vec[i] mod 2 == 0 Entonces
			contadorPar = contadorPar + 1;
		FinSi
	FinPara
	
FinFuncion
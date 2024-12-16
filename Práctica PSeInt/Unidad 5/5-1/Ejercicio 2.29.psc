Algoritmo sin_titulo
	
	// Considere el caso inverso al del problema anterior. Se dan como dato los vectores VP y VI
	// que contienen respectivamente las componentes pares e impares de un vector V. Reconstruir el
	// vector V.
	
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

Funcion reconstruirVector(contadorPar, contadorImpar, vectorPar, vectorImpar)
	
	Definir i, j, k, vectorReconstruido, N Como Entero;
	
	N = contadorImpar+contadorPar;
	
	Dimension vectorReconstruido[N];
	
	Para i = 0 hasta N-1 Hacer
		sI j <= contadorPar-1 Entonces
			vectorReconstruido[i] = vectorPar[j];
			j = j + 1;
		SiNo
			Si k <= contadorImpar-1 Entonces
				vectorReconstruido[i] = vectorImpar[k];
				k = k + 1;
			FinSi
		FinSi
	FinPara
	
	mostrarVector(vectorReconstruido, N);
	
FinFuncion

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
	Imprimir "----------------------------";
	Imprimir "Reconstruido: ";
	reconstruirVector(contadorPar, contadorImpar, vectorPar, vectorImpar);

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
	
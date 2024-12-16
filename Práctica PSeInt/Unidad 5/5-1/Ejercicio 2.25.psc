Algoritmo sin_titulo
	
	// Se lee un valor n seguido de n valores, se pide informar el mayor número leído y su posición,
	// si este se repite, informar todas las posiciones.
	
	Definir N, vec Como Entero;
	
	Imprimir "Ingresar cantidad de valores: ";
	Leer N;
	
	Dimension vec[N];
	
	llenarVector(vec, N);
	mostrarVector(vec, N);
	Imprimir " ";
	
	encontrarMayor(vec, N);
	
FinAlgoritmo

Funcion llenarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 hasta N-1 Hacer
		Imprimir "Ingresar valor: ";
		Leer vec[i];
	FinPara
	
FinFuncion

Funcion mostrarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Si vec[i] <> 0 Entonces
			Imprimir vec[i], " ", Sin Saltar;
		FinSi
	FinPara
	
FinFuncion

Funcion encontrarMayor(vec, N)
	
	Definir i, posMayor, numMayor Como Entero;
	
	Dimension posMayor[N];
	
	numMayor = vec[0];
	
	Para i = 0 Hasta N-1 Hacer
		
		Si vec[i] > numMayor Entonces
			numMayor = vec[i];
		FinSi
		
	FinPara
	
	Imprimir "Mayor Número: ", numMayor;
	buscarRepeticion(vec, N, numMayor);
	
FinFuncion

Funcion buscarRepeticion(vec, N, numMayor)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Si vec[i] == numMayor Entonces
			Imprimir "Posición: ", i+1;
		FinSi
	FinPara
	
FinFuncion
	
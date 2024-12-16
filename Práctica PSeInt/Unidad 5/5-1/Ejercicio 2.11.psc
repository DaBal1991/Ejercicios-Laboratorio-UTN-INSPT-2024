Algoritmo sin_titulo
	
	// Dados N enteros, se emite un mensaje indicando si ingresaron en orden creciente, decreciente o desordenados
	
	Definir vectorNum, N como entero;
	
	Imprimir "Ingresar cantidad de números: ";
	Leer N;
	
	Dimension vectorNum[N];
	
	llenarVector(vectorNum, N);
	comprobarOrden(vectorNum, N);
	
	
FinAlgoritmo

Funcion llenarVector(vectorNum, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir "Ingresar valor entero: ";
		Leer vectorNum[i];
	FinPara
	
FinFuncion

Funcion comprobarOrden(vectorNum, N)
	
	Definir i, esCreciente, esDecreciente Como Entero;
	
	esCreciente = 1;
	esDecreciente = 1;
	
	Para i = 0 Hasta N-2 Hacer
		Si vectorNum[i] < vectorNum[i+1] Entonces
			esDecreciente = 0;
		SiNo
			esCreciente = 0;
		FinSi
	FinPara
	
	Si esCreciente == 1 Entonces
		Imprimir "Orden Creciente...";
	SiNo
		Si esDecreciente == 1 Entonces
			Imprimir "Orden decreciente...";
		SiNo
			Imprimir "Desordenado...";
		FinSi
	FinSi
		
FinFuncion


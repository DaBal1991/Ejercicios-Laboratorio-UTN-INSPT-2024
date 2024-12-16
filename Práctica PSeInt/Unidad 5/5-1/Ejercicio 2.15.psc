Algoritmo sin_titulo
	
	//  Se leen N n�meros enteros y se emite el mayor y la posici�n en la que ingres� por primera
	// vez; el valor del �ltimo y del primer n�mero ingresado
	
	Definir vectorNum como Entero;
	Definir N como entero;
	
	Imprimir "Ingresar la cantidad de valores: ";
	Leer N;
	
	Dimension vectorNum[N];
	
	llenarVector(vectorNum, N);
	
FinAlgoritmo

Funcion llenarVector(vectorNum, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir "Ingrese un valor entero: ";
		Leer vectorNum[i];
	FinPara
	
	buscarMayor(vectorNum, N);
	
FinFuncion

Funcion buscarMayor(vectorNum, N)
	
	Definir i, posMayor, numMayor Como Entero;
	
	numMayor = vectorNum[0];
	
	Para i = 0 Hasta N-1 Hacer
		Si vectorNum[i] > numMayor Entonces
			numMayor = vectorNum[i];
			posMayor = i;
		FinSi
	FinPara
	
	Imprimir "Mayor n�mero: ", numMayor;
	Imprimir "Posici�n: ", posMayor+1;
	Imprimir "Primer valor ingresado: ", vectorNum[0];
	iMPRIMIR "Ultimo valor ingresado: ", vectorNum[N-1];
	
FinFuncion
	
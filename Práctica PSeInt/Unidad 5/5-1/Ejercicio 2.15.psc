Algoritmo sin_titulo
	
	//  Se leen N números enteros y se emite el mayor y la posición en la que ingresó por primera
	// vez; el valor del último y del primer número ingresado
	
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
	
	Imprimir "Mayor número: ", numMayor;
	Imprimir "Posición: ", posMayor+1;
	Imprimir "Primer valor ingresado: ", vectorNum[0];
	iMPRIMIR "Ultimo valor ingresado: ", vectorNum[N-1];
	
FinFuncion
	
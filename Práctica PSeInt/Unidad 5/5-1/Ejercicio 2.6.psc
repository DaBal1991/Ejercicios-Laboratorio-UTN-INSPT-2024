Algoritmo sin_titulo
	
    // Se lee una serie de N números, de a uno y se emite:
	// a) la cantidad de positivos;
	// b) el valor del primer y último números leídos;
	// c) la sumatoria;
	// d) la productoria.
	
	Definir vectorNum como Real;
	Definir N Como Entero;
	
	Imprimir "Ingresar la cantidad de números: ";
	Leer N;
	
	Dimension vectorNum[N];
	
	llenarVector(vectorNum, N);
	Imprimir "Cantidad de números positivos: ", contarPositivos(vectorNum, N);
	Imprimir "Primer valor ingresado: ", vectorNum[0];
	Imprimir "Ultimo valor ingresado: ", vectorNum[N-1];
	Imprimir "Sumatoria : ", sumatoriaVector(vectorNum, N);
	Imprimir "Productoria: ", productoriaVector(vectorNum, N);
	
FinAlgoritmo

Funcion llenarVector(vectorNum, N)
	
	Definir i Como Entero;
	
	Para i = 0 hasta N-1 Hacer
		Imprimir i+1, ") Ingresar un valor: ";
		Leer vectorNum[i];
	FinPara
	
FinFuncion

Funcion contadorPositivo = contarPositivos(vectorNum, N) 
	
	Definir i, contadorPositivo como entero;
	
	Para i = 0 hasta N-1 Hacer
		Si vectorNum[i] > 0 Entonces
			contadorPositivo = contadorPositivo + 1;
		FinSi
	FinPara
	
FinFuncion

Funcion sum = sumatoriaVector(vectorNum, N)
	
	Definir i Como Entero;
	Definir sum como Real;
	
	Para i = 0 Hasta N-1 Hacer
		sum = sum + vectorNum[i];
	FinPara
	
FinFuncion

Funcion prod = productoriaVector(vectorNum, N)
	
	Definir i Como Entero;
	Definir prod como Real;
	prod = 1;
	
	Para i = 0 Hasta N-1 Hacer
		prod = prod*vectorNum[i];
	FinPara
	
FinFuncion
	
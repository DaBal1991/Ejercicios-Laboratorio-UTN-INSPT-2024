Algoritmo sin_titulo
	
//	Escribir un programa que declare tres vectores ?vector1?, ?vector2? y ?vector3? de cinco
//	enteros cada uno, pida valores para ?vector1? y ?vector2? y calcule vector3=vector1+vector2.
	
	Definir vecUno, vecDos, vecTres, i Como Entero;
	Dimension vecUno[5], vecDos[5], vecTres[5];
	
	Para i = 0 Hasta 4 Hacer
		Imprimir "Ingresar valor vector 1: ";
		Leer vecUno[i];
		
		Imprimir "Ingresar valor vector 2: ";
		Leer vecDos[i];
		
		vecTres[i] = vecUno[i] + vecDos[i];
		
	FinPara
	
	Imprimir "Vector Uno: ";
	Para i = 0 Hasta 4 Hacer
		Imprimir vecUno[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
	Imprimir "Vector Dos: ";
	Para i = 0 Hasta 4 Hacer
		Imprimir vecDos[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
	Imprimir "Vector Tres: ";
	Para i = 0 Hasta 4 Hacer
		Imprimir vecTres[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
FinAlgoritmo

Algoritmo sin_titulo
	
//	Prepara un programa que permita imprimir cada una de las sucesiones numéricas que
//	se presentan a continuación
//	a) 1 2 3 4 5 6 7
//	1 2 3 4 5 6 7
//	1 2 3 4 5 6 7
//	1 2 3 4 5 6 7
//	b) 1 1 1 1 1 1 1
//	2 2 2 2 2 2 2
//	3 3 3 3 3 3 3
//	c) 1
//	1 2
//	1 2 3
//	1 2 3 4
//	1 2 3 4 5
	
	Definir i, j Como Entero;
	
	Imprimir "Ejercicio A: ";
	Para i = 0 hasta 3 Hacer
		Para j = 1 Hasta 7 Hacer
			Imprimir j, " ", Sin Saltar;
		FinPara
		Imprimir " ";
	FinPara
	
	Imprimir "Ejercicio B: ";
	Para i = 1 Hasta 3 Hacer
		Para j = 1 Hasta 7
			Imprimir i, " ", Sin Saltar;
		FinPara
		Imprimir " ";
	FinPara
	
	Imprimir "Ejercicio C: ";
	Para i = 4 Hasta 0 Hacer
		Para j = 1 Hasta 5-i Hacer
			Imprimir j, " ", Sin Saltar;
		FinPara
		Imprimir " ";
	FinPara
	
FinAlgoritmo

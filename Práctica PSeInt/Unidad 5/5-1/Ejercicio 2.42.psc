Algoritmo sin_titulo
	
	// Prepara un programa que permita imprimir cada una de las sucesiones numéricas que se
	// presentan a continuación: (No se puede utilizar más de 2 ciclos repetitivos, los que se utilicen
	// deben anidarse).
	// a) 	1 2 3 4 5 6 7
	// 		1 2 3 4 5 6 7
	//		1 2 3 4 5 6 7
	//		1 2 3 4 5 6 7
	// b) 	1 1 1 1 1 1 1
	//		2 2 2 2 2 2 2
	//		3 3 3 3 3 3 3
	// c) 	1
	// 		1 2
	//		1 2 3
	//		1 2 3 4
	// 		1 2 3 4 5
	//	d) 	0 1 2 3 4 5
	//		0 2 4 6 8 10
	//		0 3 6 9 12 15
	//		0 4 8 12 16 20
	//	e) 	* * * * * * *
	//		* * * * * * *
	//		* * * * * * *
	//		* * * * * * *
	// f) 	A
	//		A A
	//		A A A
	//		A A A A
	// g) 	A
	//		B B
	//		A A A
	//		B B B B
	
	Definir i, j Como Entero;
	Definir op Como Caracter;
	
	lEER op;
	
	Segun op Hacer
		"A":
			Imprimir "Ejercicio A: ";
			Para i = 0 hasta 3 Hacer
				Para j = 1 hasta 7 Hacer
					Imprimir j, " ", Sin Saltar;
				FinPara
				Imprimir " ";
			FinPara
		"B":
			Imprimir "Ejercicio B: ";
			Para i = 1 hasta 3 Hacer
				Para j = 0 hasta 6 Hacer
					Imprimir i, " ", Sin Saltar;
				FinPara
				Imprimir " ";
			FinPara
		"C":
			Para i = 4 hasta 0 Hacer
				Para j = 1 hasta 5-i Hacer
					Imprimir j, " ", Sin Saltar;
				FinPara
				iMPRIMIR " ";
			FinPara
		"D":
			Para i = 1 Hasta 4 Hacer
				Para j = 0 hasta 5 Hacer
					Imprimir j*i, " ", Sin Saltar; 
				FinPara
				Imprimir " ";
			FinPara
		"E":
			Para i = 0 Hasta 3 Hacer
				Para j = 0 Hasta 5 Hacer
					Imprimir "* ", Sin Saltar;
				FinPara
				Imprimir " ";
			FinPara
		"F":
			Para i = 3 Hasta 0 Hacer
				Para j = 1 Hasta 4-i Hacer
					Imprimir "A ", Sin Saltar;
				FinPara
				Imprimir " ";
			FinPara
		"G":
			Para i = 3 Hasta 0 Hacer
				Para j = 1 Hasta 4-i Hacer
					Si i mod 2 == 0 Entonces
						Imprimir "B ", Sin Saltar;
					SiNo
						Imprimir "A ", Sin Saltar;
					FinSi
				FinPara
				Imprimir " ";
			FinPara
	FinSegun
	
FinAlgoritmo

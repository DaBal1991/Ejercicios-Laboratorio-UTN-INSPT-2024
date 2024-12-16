Algoritmo sin_titulo
	
	// Limitaciones de entrada y generación de números aleatorios: Desarrolla un
	// programa que permita al usuario ingresar un número dentro del rango de 1 a 50.
	// Además, el programa debe generar una lista de 10 números aleatorios dentro de ese
	// mismo rango.
	
	Definir N, lista como real;
	Definir i Como Entero;
	
	Mientras N < 1 o N > 50 Hacer
		Imprimir "El número debe estar entre 1 y 50";
		Leer N;
	FinMientras
	
	Dimension lista[10];
	
	Para i = 0 Hasta 9 Hacer 
		lista[i] = Aleatorio(1,50);
		Imprimir lista[i];
	FinPara
	
FinAlgoritmo

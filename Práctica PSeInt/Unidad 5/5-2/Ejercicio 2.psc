Algoritmo sin_titulo
	
	// Limitaciones de entrada y generaci�n de n�meros aleatorios: Desarrolla un
	// programa que permita al usuario ingresar un n�mero dentro del rango de 1 a 50.
	// Adem�s, el programa debe generar una lista de 10 n�meros aleatorios dentro de ese
	// mismo rango.
	
	Definir N, lista como real;
	Definir i Como Entero;
	
	Mientras N < 1 o N > 50 Hacer
		Imprimir "El n�mero debe estar entre 1 y 50";
		Leer N;
	FinMientras
	
	Dimension lista[10];
	
	Para i = 0 Hasta 9 Hacer 
		lista[i] = Aleatorio(1,50);
		Imprimir lista[i];
	FinPara
	
FinAlgoritmo

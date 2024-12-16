Algoritmo sin_titulo
	
	//  Se ingresa un número entero y, la computadora indica si es primo o no.
	
	Definir N como Entero;
	
	Imprimir "Ingresar un número entero: ";
	Leer N;
	
	Si esPrimo(N) == 1 Entonces
		Imprimir "Es primo";
	SiNo
		Imprimir "No es primo";
	FinSi
	
FinAlgoritmo

Funcion primo = esPrimo(N)
	
	Definir i, div, contador, primo Como Entero;
	
	div = 2;
	contador = 0;
	
	Mientras div < N Hacer
		Si N mod div == 0 entonces
			contador = contador + 1;
		FinSi
		div = div + 1;
	FinMientras
	
	Si contador >= 1 Entonces
		primo = 0;
	SiNo
		primo = 1;
	FinSi
	
FinFuncion
	
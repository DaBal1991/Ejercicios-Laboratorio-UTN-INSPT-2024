Algoritmo sin_titulo
	
	// Se lee un n�mero natural N y la computadora emite los n�meros naturales pares menores que N
	
	Definir N, i como Entero;
	
	i = 0;
	
	Imprimir "Ingresar un numero natural: ";
	Leer N;
	
	Mientras i < N Hacer
		i = i + 1;
		
		Si (i mod 2 = 0) y i < N Entonces
			Imprimir i;
		FinSi
		
	FinMientras
	
FinAlgoritmo

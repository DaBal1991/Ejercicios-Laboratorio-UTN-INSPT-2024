Algoritmo sin_titulo
	
	// Se ingresa un número entero N y se emiten los N primeros números primos.
	
	Definir N como Entero;
	
	Imprimir "Ingresar cantidad de números primos deseados: ";
	Leer N;
	
	esPrimo(N);
	
	
FinAlgoritmo

Funcion esPrimo(N)
	
	Definir i, div, contador, primo, num, numPrimo Como Entero;
	
	num = 2;
	contador = 0;
	
	Mientras contador < N Hacer
		
		div = 2;
		
		Mientras div < num Hacer
			Si num mod div == 0 entonces
				primo = primo + 1;
			FinSi
			div = div + 1;
		FinMientras
		
		Si primo < 1 Entonces
			numPrimo = num;
			contador = contador + 1;
			Imprimir numPrimo;
		FinSi
		
		num = num +1;
		primo = 0;
		
	FinMientras
	
FinFuncion


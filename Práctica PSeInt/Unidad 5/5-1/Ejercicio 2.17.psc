Algoritmo sin_titulo
	
	// Se lee un número entero N mayor o igual que 0 y, la computadora muestra el factorial del mismo
	
	Definir N, fact Como Entero;
	
	Imprimir "Ingrese un entero mayor o igual que cero: ";
	Leer N;
	
	Mientras N < 0 Hacer
		Imprimir "Ingrese un entero mayor o igual que cero...";
		Leer N;
	FinMientras
	
	Si N == 0 Entonces
		fact = 1;
		Imprimir N, "! = ", fact;
	SiNo
		fact = factorial(N);
	FinSi
	
FinAlgoritmo

Funcion fact = factorial(N)
	
	Definir fact, i como Entero;
	
	fact = 1;
	
	Para i = 1 Hasta N Hacer
		fact = fact * i;
	FinPara
	
FinFuncion
	
Algoritmo sin_titulo
	
	// Se ingresa un número no determinado de valores enteros. El último es -1. La computadora
	// indica cuál fue el máximo número ingresado.
	
	Definir num, valorMax como Entero;
	
	valorMax = 0;
	
	Repetir
		
		Imprimir "Ingresar número entero: ";
		Leer num;
		
		Si num > valorMax Entonces
			valorMax = num;
		FinSi
		
	Hasta Que num = -1;
	
	Imprimir "Máximo valor ingresado: ", valorMax;
	
FinAlgoritmo

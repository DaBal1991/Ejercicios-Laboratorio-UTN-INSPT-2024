Algoritmo sin_titulo
	
	// Se ingresa un n�mero no determinado de valores enteros. El �ltimo es -1. La computadora
	// indica cu�l fue el m�ximo n�mero ingresado.
	
	Definir num, valorMax como Entero;
	
	valorMax = 0;
	
	Repetir
		
		Imprimir "Ingresar n�mero entero: ";
		Leer num;
		
		Si num > valorMax Entonces
			valorMax = num;
		FinSi
		
	Hasta Que num = -1;
	
	Imprimir "M�ximo valor ingresado: ", valorMax;
	
FinAlgoritmo

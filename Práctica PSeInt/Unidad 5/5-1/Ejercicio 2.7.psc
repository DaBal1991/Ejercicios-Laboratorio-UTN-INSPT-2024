Algoritmo sin_titulo
	
	// Se lee un n�mero no determinado de veces un n�mero entero no nulo. El fin de datos se
	// indica con un 0. Se desea emitir el valor del promedio de los n�meros positivos le�dos.
	
	Definir num, contador Como Entero;
	Definir acum, promedio como Real;
	
	Repetir
		Imprimir "Ingresar n�mero entero: ";
		Leer num;
		
		Si num > 0 Entonces
			acum = acum + num;
			contador = contador + 1;
		FinSi
		
	Hasta Que num = 0; 
	
	Imprimir "Promedio de positivos: ", acum/contador;
	
FinAlgoritmo

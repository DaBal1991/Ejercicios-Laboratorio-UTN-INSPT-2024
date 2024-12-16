Algoritmo sin_titulo
	
	// Se lee un número no determinado de veces un número entero no nulo. El fin de datos se
	// indica con un 0. Se desea emitir el valor del promedio de los números positivos leídos.
	
	Definir num, contador Como Entero;
	Definir acum, promedio como Real;
	
	Repetir
		Imprimir "Ingresar número entero: ";
		Leer num;
		
		Si num > 0 Entonces
			acum = acum + num;
			contador = contador + 1;
		FinSi
		
	Hasta Que num = 0; 
	
	Imprimir "Promedio de positivos: ", acum/contador;
	
FinAlgoritmo

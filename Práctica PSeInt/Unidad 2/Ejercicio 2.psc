Algoritmo sin_titulo
	
	Definir num, centena, decena, unidad, aux Como Entero;
	
	// Escribir un programa para que, dado un n�mero de tres cifras, imprima la cifra central.
	// En la entrada de datos un mensaje debe decir:
	// Indicar un n�mero de tres cifras
	// la salida ser�:
	// Valor: XXX"
	// La cifra central es: X
	
	Imprimir "Indicar un n�mero de tres cifras: ";
	Leer num;
	
	Mientras num > 999 o num < 100 Hacer
		Imprimir "Indicar un n�mero de tres cifras: ";
		Leer num;
	FinMientras
	
	centena = trunc(num/100)*100;
	num = num - centena;
	decena = trunc(num/10);
	
	Imprimir "Valor: ", num+centena;
	Imprimir "La cifra central es: ", decena;
	
FinAlgoritmo

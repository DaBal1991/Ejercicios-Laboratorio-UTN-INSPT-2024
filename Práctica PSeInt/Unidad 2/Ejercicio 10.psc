Algoritmo sin_titulo
	
	Definir num, unidad, centena, decena como Entero;
	
	// Se ingresa un valor entero de 3 dígitos, realizar un programa que devuelva las cifras por separado. la salida será:
	// Valor ingresado: XXX
	// Unidades: X
	// Decenas: X
	// Centenas: X
	
	Imprimir "Ingresar un valor entero de tres dígitos: ";
	Leer num;
	
	Mientras num > 999 o num < 100 Hacer
		Imprimir "Ingresar un valor entero de tres dígitos: ";
		Leer num;
	FinMientras
	
	centena = trunc(num/100);
	decena = trunc((num mod 100)/10);
	unidad = (num mod 100) mod 10;
	
	Imprimir "Valor ingresado: ", num;
	Imprimir "Unidades: ", unidad;
	Imprimir "Decenas: ", decena;
	Imprimir "Centenas: ", centena;
	
FinAlgoritmo

Algoritmo sin_titulo
	
	// Dado un valor entero de dos cifras, realizar un algoritmo que devuelva el valor de
	// cada uno de sus cifras ordenadas de mayor a menor.
	
	Definir num, unidad, decena Como Entero;
	
	num = ingresarValorEntero();
	
	Mientras num < 10 o num > 99 hacer
		num = ingresarValorEntero();
	FinMientras
	
	decena = trunc(num/10);
	unidad = num mod 10;
	
	Si unidad > decena Entonces
		Imprimir unidad, ", ", decena;
	SiNo
		Imprimir decena, ", ", unidad;
	FinSi
	
FinAlgoritmo

SubAlgoritmo numEntero = ingresarValorEntero
	
	Definir numEntero como Entero;
	
	Imprimir "Ingresar un valor entero: ";
	Leer numEntero;
	
FinSubAlgoritmo
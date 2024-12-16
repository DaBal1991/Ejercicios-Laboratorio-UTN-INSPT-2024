Algoritmo sin_titulo
	
	// Dado un valor entero de tres cifras, realizar un algoritmo que devuelva el valor de
	// cada uno de sus cifras ordenadas de menor a mayor.
	
	Definir num, unidad, decena, centena, aux Como Entero;
	
	num = ingresarValorEntero();
	
	Mientras num < 100 o num > 999 hacer
		num = ingresarValorEntero();
	FinMientras
	
	centena = trunc(num/100);
	decena = trunc((num mod 100)/10);
	unidad = (num mod 100) mod 10;
	
	Imprimir centena;
	Imprimir decena;
	Imprimir unidad;
	
	Si unidad < centena Entonces
		aux = unidad;
		unidad = centena;
		centena = aux;
	FinSi
	
	Si unidad < decena Entonces
		aux = unidad;
		unidad = decena;
		decena = aux;
	FinSi
	
	Si decena < centena Entonces
		aux = decena;
		decena = centena;
		centena = aux;
	FinSi
	
	Imprimir "Menor a Mayor: ", centena, ", ", decena, ", ", unidad;
	
FinAlgoritmo

SubAlgoritmo numEntero = ingresarValorEntero
	
	Definir numEntero como Entero;
	
	Imprimir "Ingresar un valor entero: ";
	Leer numEntero;
	
FinSubAlgoritmo

Algoritmo sin_titulo
	
	Definir num, unidad, centena como Entero;
	
	//	Se ingresa un valor de dos cifras, realizar un algoritmo que devuelva la cifra de las unidades y la cifra de las decenas.
	//	Utilizar mensajes de entrada y salida adecuados.
	
	Imprimir "Ingresar número entero de dos cifras: ";
	Leer num;
	
	Mientras num > 99 o num < 10 Hacer
		Imprimir "Ingrese un número entero de dos cifras: ";
		Leer num;
	FinMientras
	
	centena = trunc(num/10);
	unidad = num mod 10;
	
	Imprimir "Centena: ", centena;
	Imprimir "Unidad: ", unidad;
	
FinAlgoritmo

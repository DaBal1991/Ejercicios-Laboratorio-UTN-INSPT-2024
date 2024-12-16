Algoritmo sin_titulo
	
	Definir num, unidad, decena, aux Como Entero;
	
	//	Escribir un programa para que dado un numero de dos cifras, imprima un nuevo
	//	número que resulte de sus cifras permutadas. En la entrada de datos un mensaje debe
	//	decir: Indicar un número de dos cifras, la salida será: 
	//	Valor: XK (ej: 57)
	//	Valor permutado: KX (ej: 75)
	
	Imprimir "Indicar un número de dos cifras: ";
	Leer num;
	
	Mientras num > 99 o num < -99 Hacer
		Imprimir "Indicar un número de dos cifras: ";
		Leer num;
	FinMientras
	
	decena = trunc(num/10);
	unidad = (num mod 10) * 10;
	aux = unidad + decena;
	
	Imprimir "Valor: ", num;
	Imprimir "Valor permutado: ", aux;
	
	
FinAlgoritmo

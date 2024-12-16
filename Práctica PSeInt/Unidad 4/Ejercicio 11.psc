Algoritmo sin_titulo
	
	// Ingresar un numero entero entre 0 y 9. Luego mostrar en ingles el valor ingresado. Si se
	// ingresa un valor fuera de dicho rango, mostrar un mensaje indicando la situación.
	
	Definir num como Entero;
	
	Imprimir "Ingresar un valor entre 0 y 9:";
	Leer num;
	
	Segun num hacer
		0:
			Imprimir "Zero.";
		1: 
			Imprimir "One.";
		2:
			Imprimir "Two.";
		3:
			Imprimir "Three.";
		4:
			Imprimir "Four";
		5:
			Imprimir "Five.";
		6:
			Imprimir "Six.";
		7:
			Imprimir "Seven.";
		8:
			Imprimir "Eight.";
		9:
			Imprimir "Nine.";
		De Otro Modo:
			Imprimir "Fuera de rango...";
	FinSegun
	
FinAlgoritmo

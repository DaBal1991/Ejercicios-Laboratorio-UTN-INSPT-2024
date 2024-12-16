Algoritmo sin_titulo
	
	// Se ingresa un número natural del 1 al 7, el programa devuelve el nombre del día de
	// la semana al cual corresponde. (Ej: Si ingresa 1 debe devolver Lunes).
	
	Definir num Como Entero;
	
	num = ingresarValorEntero;
	
	Mientras num > 7 o num < 1 Hacer
		num = ingresarValorEntero;
	FinMientras
	
	Segun num Hacer
		1:
			Imprimir "Lunes";
		2:
			Imprimir "Martes";
		3:
			Imprimir "Miercoles";
		4:
			Imprimir "Jueves";
		5:
			Imprimir "Viernes";
		6:
			Imprimir "Sabado";
		7:
			Imprimir "Domingo";
	FinSegun
	
FinAlgoritmo

SubAlgoritmo numEntero = ingresarValorEntero
	
	Definir numEntero como Entero;
	
	Imprimir "Ingresar un valor entero: ";
	Leer numEntero;
	
FinSubAlgoritmo
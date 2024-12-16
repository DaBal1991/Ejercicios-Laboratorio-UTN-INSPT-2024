Algoritmo sin_titulo
	
	// Dado el nombre y la edad de una persona, el programa informa si es o no mayor de edad.
	
	Definir edad como entero;
	
	edad = ingresarValorEntero();
	
	Mientras edad <= 0 o edad > 120 Hacer
		edad = ingresarValorEntero();
	FinMientras
	
	Si edad >= 18 Entonces
		Imprimir "Es mayor de edad.";
	SiNo
		Imprimir "No es mayor de edad.";
	FinSi
	
FinAlgoritmo

SubAlgoritmo numEntero = ingresarValorEntero
	
	Definir numEntero como Entero;
	
	Imprimir "Ingresar un valor entero: ";
	Leer numEntero;
	
FinSubAlgoritmo

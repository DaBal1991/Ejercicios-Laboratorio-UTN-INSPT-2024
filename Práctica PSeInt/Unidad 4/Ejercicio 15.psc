Algoritmo sin_titulo
	
//	Solicite un numero entero a usuario, solamente entre 1 a 10. Luego, retorne un mensaje que
//	indique si es primo. Si no es primo, justificarlo apropiadamente.
	
	Definir num, contador, i como Entero;
	
	Imprimir "Ingresar número entero entre 1 y 10: ";
	Leer num;
	
	Mientras num > 10 o num < 1 hacer
		Imprimir "Debe estar entre 1 y 10: ";
		Leer num;
	FinMientras
	
	Para i = 2 Hasta 10 Hacer
		Si num mod i == 0 Entonces
			contador = contador + 1;
		FinSi
	FinPara
	
	Si contador <= 1 y num <> 1 Entonces
		Imprimir "Es primo.";
	SiNo
		Imprimir "No es primo. Dado que es divisible por uno y por si mismo.";
	FinSi
	
FinAlgoritmo

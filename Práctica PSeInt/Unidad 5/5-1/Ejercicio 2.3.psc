Algoritmo sin_titulo
	
	// Se leen 20 números y se emite su promedio
	
	Definir num, acum, promedio como Real;
	Definir i, tam Como Entero;
	tam = 20;
	
	Para i = 0 Hasta tam-1 Hacer
		num = ingresarValor();
		acum = acum + num;
		Imprimir acum;
		promedio = calcularPromedio(acum);
	FinPara
	
	Imprimir "Promedio: ", promedio;
	
FinAlgoritmo

Funcion num = ingresarValor
	
	Definir num como Real;
	
	Imprimir "Ingresar valor: ";
	Leer num;
	
FinFuncion

Funcion promedio = calcularPromedio(acum)
	
	Definir promedio como Real;
	
	promedio = acum/20;
	
FinFuncion
	
Algoritmo sin_titulo
	
	// Se leen 20 números y se emite un mensaje indicando cuantos fueron negativos
	
	Definir num como Real;
	Definir i, tam, contador como entero;
	tam = 20;
	
	Para i = 0 Hasta tam-1 Hacer
		num = ingresarValor();
		contador = chequearNegativo(num, contador);
	FinPara
	
	Imprimir "Total de negativos: ", contador;
	
FinAlgoritmo

Funcion num = ingresarValor
	
	Definir num como Real;
	
	Imprimir "Ingresar un valor: ";
	Leer num;
	
FinFuncion

Funcion contador = chequearNegativo(num, contador)
	
	Si num < 0 Entonces
		contador = contador + 1;
	FinSi
	
FinFuncion
	
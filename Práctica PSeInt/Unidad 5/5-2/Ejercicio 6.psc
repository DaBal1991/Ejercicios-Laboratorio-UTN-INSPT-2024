Algoritmo sin_titulo

//Orden de los números ingresados: Escribe un programa que solicite al usuario
//	ingresar N números enteros. El programa debe emitir un mensaje indicando si los
//		números ingresados están en orden creciente, decreciente o desordenados.
	
	Definir N, creciente, decreciente, i Como Entero;
	Definir num, ultimoValor Como Real;
	
	Imprimir "Ingresar cantidad de valores: ";
	Leer N;
	
	Imprimir "Ingresar valor: ";
	Leer num;
	
	ultimoValor = num;
	
	creciente = 1;
	decreciente = 1;
	
	Para i = 0 hasta N-2 Hacer
		Imprimir "Ingresar valor: ";
		Leer num;
		
		Si num > ultimoValor Entonces
			decreciente = 0;
			ultimoValor = num;
		Sino
			Si num < ultimoValor Entonces
				ultimoValor = num;
				creciente = 0;
			FinSi
		FinSi
	FinPara
	
	Si creciente == 1 Entonces
		Imprimir "Orden creciente.";
	SiNo
		Si decreciente == 1 Entonces
			Imprimir "Orden decreciente. ";
		SiNo
			Si creciente == 0 y decreciente == 0 Entonces
				Imprimir "Desordenados.";
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo

Algoritmo sin_titulo
	
	//	Detectar n�meros negativos: Escribe un programa que solicite al usuario ingresar 20
	//	n�meros por teclado. Luego, el programa debe indicar si alguno de los n�meros
	//	ingresados fue negativo mediante un mensaje.
	
	Definir num, contador, i Como Real;
	
	Para i = 0 Hasta 19 Hacer
		Imprimir "Ingresar un valor: ";
		Leer num;
		
		Si num < 0 Entonces
			contador = contador + 1;
		FinSi
	FinPara
	
	Imprimir "Se ingresaron: ", contador, " n�meros negativos.";
	
FinAlgoritmo

Algoritmo sin_titulo
	
	//	Detectar números negativos: Escribe un programa que solicite al usuario ingresar 20
	//	números por teclado. Luego, el programa debe indicar si alguno de los números
	//	ingresados fue negativo mediante un mensaje.
	
	Definir num, contador, i Como Real;
	
	Para i = 0 Hasta 19 Hacer
		Imprimir "Ingresar un valor: ";
		Leer num;
		
		Si num < 0 Entonces
			contador = contador + 1;
		FinSi
	FinPara
	
	Imprimir "Se ingresaron: ", contador, " números negativos.";
	
FinAlgoritmo

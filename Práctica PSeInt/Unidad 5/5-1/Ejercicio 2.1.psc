Algoritmo sin_titulo
	
	// Se ingresan 20 números por teclado y se indica si alguno fue negativo mediante un mensaje
	
	Definir num como Real;
	Definir i, tam como entero;
	tam = 20;
	
	Para i = 0 Hasta tam-1 Hacer
		num = ingresarValor();
		chequearNegativo(num);
	FinPara
	
	
	
FinAlgoritmo

Funcion num = ingresarValor
	
	Definir num como Real;
	
	Imprimir "Ingresar un valor: ";
	Leer num;
	
FinFuncion

Funcion chequearNegativo(num)
	
	Si num < 0 Entonces
		Imprimir "Es negativo.";
	FinSi
	
FinFuncion
	
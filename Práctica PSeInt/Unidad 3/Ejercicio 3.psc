Algoritmo sin_titulo
	
//	Dados dos números reales, realizar un algoritmo que devuelva:
//	La suma, la resta, el producto y el cociente si este es posible.
	
	Definir numUno, numDos como Real;
	
	numUno = ingresarValorReal();
	numDos = ingresarValorReal();
	
	Imprimir "Suma = ", numUno + numDos;
	Imprimir "Resta = ", numUno - numDos;
	Imprimir "Producto = ", numUno*numDos;
	
	Si numDos = 0 Entonces
		Imprimir "No es posible dividir por cero.";
	SiNo
		Imprimir "Cociente = ", numUno/numDos;
	FinSi
	
FinAlgoritmo

SubAlgoritmo numReal = ingresarValorReal
	
	Definir numReal como Real;
	
	Imprimir "Ingresar un valor real: ";
	Leer numReal;
	
FinSubAlgoritmo
Algoritmo sin_titulo
	
	// Realice un algoritmo que ingresando 2 valores reales los devuelva ordenados de mayor a menor.
	
	Definir numUno, numDos Como Real;
	
	numUno = ingresarValorReal();
	numDos = ingresarValorReal();
	
	Si numUno > numDos Entonces
		Imprimir numUno, ", ", numDos;
	SiNo
		Imprimir numDos, ", ", numUno;
	FinSi
	
FinAlgoritmo

SubAlgoritmo numReal = ingresarValorReal
	
	Definir numReal como Real;
	
	Imprimir "Ingresar un valor real: ";
	Leer numReal;
	
FinSubAlgoritmo

Algoritmo sin_titulo
	
	// Dada dos valores reales, realizar un programa que devuelva el menor valor ingresado.
	
	Definir numUno, numDos como Real;
	
	numUno = ingresarValorReal();
	numDos = ingresarValorReal();
	
	Si numUno < numDos Entonces
		Imprimir numUno, " es el menor valor ingresado.";
	SiNo
		Imprimir numDos, " es el menor valor ingresado.";
	FinSi
	
FinAlgoritmo

SubAlgoritmo numReal = ingresarValorReal
	
	Definir numReal como Real;
	
	Imprimir "Ingresar un valor real: ";
	Leer numReal;
	
FinSubAlgoritmo

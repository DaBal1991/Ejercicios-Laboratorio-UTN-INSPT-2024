Algoritmo sin_titulo
	
	// Dados dos valores reales emitir la división del mayor por el menor.
	
	Definir numUno, numDos Como Real;
	
	numUno = ingresarValorReal();
	numDos = ingresarValorReal();
	
	Si numUno > numDos Entonces
		Imprimir numUno/numDos;
	SiNo
		Imprimir numDos/numUno;
	FinSi
	
FinAlgoritmo

SubAlgoritmo numReal = ingresarValorReal
	
	Definir numReal como Real;
	
	Imprimir "Ingresar un valor real: ";
	Leer numReal;
	
FinSubAlgoritmo
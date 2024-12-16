Algoritmo sin_titulo
	
//	Escribir un programa que ingresando dos valores reales,
//	informe si el primer valor ingresado es mayor, menor o igual que el segundo valor ingresado.
	
	Definir numUno, numDos como Real;
	
	numUno = ingresarValorReal();
	numDos = ingresarValorReal();
	
	Si numUno > numDos Entonces
		Imprimir numUno, " es mayor que ", numDos;
	SiNo
		Si numUno = numDos Entonces
			Imprimir numUno, " es igual que ", numDos;
		SiNo
			Imprimir numUno, " es menor que ", numDos;
		FinSi
	FinSi
	
FinAlgoritmo

SubAlgoritmo numReal = ingresarValorReal
	
	Definir numReal como Real;
	
	Imprimir "Ingresar un valor real: ";
	Leer numReal;
	
FinSubAlgoritmo

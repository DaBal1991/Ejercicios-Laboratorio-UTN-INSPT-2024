Algoritmo sin_titulo
	
//	Dados dos números reales cualesquiera, imprimir la leyenda: Producto Positivo, 
//	producto negativo o Producto nulo según corresponda.
	
	Definir numUno, numDos como Real;
	
	numUno = ingresarValorReal();
	numDos = ingresarValorReal();
	
	Si (numUno > 0 y numDos > 0) o (numUno < 0 y numDos < 0) Entonces
		Imprimir "Producto Positivo";
	SiNo
		Si numUno = 0 o numDos = 0 Entonces
			Imprimir "Producto Nulo";
		SiNo
			Imprimir "Producto Negativo";
		FinSi
	FinSi
	
FinAlgoritmo

SubAlgoritmo numReal = ingresarValorReal
	
	Definir numReal como Real;
	
	Imprimir "Ingresar un valor real: ";
	Leer numReal;
	
FinSubAlgoritmo
Algoritmo sin_titulo
	
//	Dados dos números reales cualesquiera distinto de cero, imprimir la leyenda:
//	Producto Positivo si tienen el mismo signo o producto negativo si tienen distinto signo.
	
	Definir numUno, numDos Como Real;
	
	numUno = ingresarValorReal();
	numDos = ingresarValorReal();
	
	Si (numUno > 0 y numDos > 0) o (numUno < 0 y numDos < 0) Entonces
		Imprimir "Producto Positivo";
	SiNo
		Imprimir "Producto Negativo";
	FinSi
	
FinAlgoritmo

SubAlgoritmo numReal = ingresarValorReal
	
	Definir numReal como Real;
	
	Imprimir "Ingresar un valor real: ";
	Leer numReal;
	
FinSubAlgoritmo
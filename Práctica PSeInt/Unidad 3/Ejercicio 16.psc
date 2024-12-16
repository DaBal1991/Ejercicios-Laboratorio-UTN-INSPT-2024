Algoritmo sin_titulo

//	Dado el sueldo de una persona, si supera los 25000 emitir un mensaje que informe
//	que se le descontara ganancias.
	
	Definir num como Real;
	
	num = ingresarValorReal();
	
	Si num > 25000 Entonces
		Imprimir "Se descontara ganancias.";
	SiNo
		Imprimir "No se descontara ganancias.";
	FinSi
	
FinAlgoritmo

SubAlgoritmo numReal = ingresarValorReal
	
	Definir numReal como Real;
	
	Imprimir "Ingresar un valor real: ";
	Leer numReal;
	
FinSubAlgoritmo
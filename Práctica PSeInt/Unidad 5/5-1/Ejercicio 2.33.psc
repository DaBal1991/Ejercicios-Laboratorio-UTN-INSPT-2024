Algoritmo sin_titulo
	
	// Se ingresan valores numéricos no nulos. El fin de los datos se indica ingresando un 0. La
	// computadora debe emitir el valor del mayor número ingresado e indicar cuántas veces apareció
	// en la lista.
	
	Definir N, valorMax Como Real;
	Definir contador como Entero;
	
	N = -1;
	
	Mientras N <> 0 Hacer
		Imprimir "Ingresar valor";
		Leer N;
		
		Si N > valorMax Entonces
			valorMax = N;
			contador = 1;
		SiNo
			Si N == valorMax Entonces
				contador = contador + 1;
			FinSi
		FinSi
	FinMientras
	
	Imprimir "Valor Máximo ingresado: ", valorMax;
	Imprimir "Cantidad de repeticiones: ", contador;
	
FinAlgoritmo

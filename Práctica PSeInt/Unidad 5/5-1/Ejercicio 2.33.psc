Algoritmo sin_titulo
	
	// Se ingresan valores num�ricos no nulos. El fin de los datos se indica ingresando un 0. La
	// computadora debe emitir el valor del mayor n�mero ingresado e indicar cu�ntas veces apareci�
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
	
	Imprimir "Valor M�ximo ingresado: ", valorMax;
	Imprimir "Cantidad de repeticiones: ", contador;
	
FinAlgoritmo

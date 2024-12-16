Algoritmo sin_titulo
	
	// Determinar el número más cercano: Escribe un programa que lea un número desde
	// el teclado y una lista de 10 números generados al azar. El programa debe determinar
	// cuál de esos números generados al azar está más cerca del número ingresado por el
	// usuario.
	
	Definir N, num, numMayor, modulo, menorModulo, cercano como real;
	Definir i Como Entero;
	
	Imprimir "Ingresar valor N entre 1 y 100";
	Leer N;
	menorModulo = 99;
	
	Para i = 0 Hasta 9 Hacer
		num = Aleatorio(1,100);
		modulo = abs(N-num);
		
		Si modulo < menorModulo Entonces
			menorModulo = modulo;
			cercano = num;
		FinSi
		
		Imprimir num;
		
	FinPara
	
	Imprimir "El valor mas cercano a N es: ", cercano;
	
FinAlgoritmo

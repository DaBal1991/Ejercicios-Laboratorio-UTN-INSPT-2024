Algoritmo sin_titulo
	
	// Determinar el n�mero m�s cercano: Escribe un programa que lea un n�mero desde
	// el teclado y una lista de 10 n�meros generados al azar. El programa debe determinar
	// cu�l de esos n�meros generados al azar est� m�s cerca del n�mero ingresado por el
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

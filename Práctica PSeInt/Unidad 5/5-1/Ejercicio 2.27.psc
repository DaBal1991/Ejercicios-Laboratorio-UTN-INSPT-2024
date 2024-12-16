Algoritmo sin_titulo
	
	// Dado un vector de n componentes enteras (n<=30) informar cual es el valor máximo ingresa
	// y en qué posición/s se encuentra
	
	Definir vec, N Como Entero;
	
	Imprimir "Ingrese cantidad de números: ";
	Leer N;
	
	Mientras N > 30 o N < 1 Hacer
		Imprimir  "Ingrese la cantidad de números (1 a 30): ";
		Leer N;
	FinMientras
	
	Dimension vec[N];
	
	llenarVector(vec, N);
	mostrarVector(vec, N);
	Imprimir "------------------------------";
	buscarMayor(vec, N);
	
FinAlgoritmo

Funcion mostrarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir vec[i], " ", Sin Saltar;
	FinPara
	Imprimir " ";
	
FinFuncion

Funcion llenarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		vec[i] = Aleatorio(1,100);
	FinPara
	
FinFuncion

Funcion buscarMayor(vec, N)
	
	Definir i, mayorValor Como Entero;
	
	mayorValor = vec[0];
	
	Para i = 0 Hasta N-1 Hacer
		Si vec[i] > mayorValor Entonces
			mayorValor = vec[i];
		FinSi
	FinPara
	
	Imprimir "Mayor valor: ", mayorValor;
	posicionesMayor(vec, N, mayorValor);
	
FinFuncion

Funcion posicionesMayor(vec, N, mayorValor)
	
	Definir i, pos Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Si vec[i] == mayorValor Entonces
			pos = i;
			Imprimir "Posicion: ", pos + 1;
		FinSi
	FinPara
	
FinFuncion
	
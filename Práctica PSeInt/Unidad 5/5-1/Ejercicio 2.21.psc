Algoritmo sin_titulo
	
	// Ingresar un vector V1 de n componentes enteros (n<=30), generar e imprimir un nuevo vector 
	// V2 con sus componentes en orden invertido.
	
	Definir N, V1, V2 Como Entero;
	
	Imprimir "Ingresar N cantidad de valores deseada: ";
	Leer N;
	
	Mientras n > 30 o n < 1 Hacer
		Imprimir "Max. 30 valores. Mín. 1 valor.";
		Leer N;
	FinMientras
	
	Dimension V1[N], V2[N];
	
	llenarVector(V1, N);
	vectorInvertido(V1, V2, N);
	
	imprimirVector(V1, N);
	Imprimir "--- Vector Invertido ---";
	ImprimirVector(V2, N);
	
FinAlgoritmo

Funcion llenarVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0  Hasta N-1 Hacer
		vec[i] = Aleatorio(1,100);
	FinPara
	
FinFuncion

Funcion vectorInvertido(vecUno, vecDos, N)
	
	Definir i, j, aux Como Entero;
	
	j = N-1;
	
	Para i = 0 Hasta N-1 Hacer
		vecDos[j] = vecUno[i];
		j = j - 1;
	FinPara
	
FinFuncion

Funcion imprimirVector(vec, N)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta N-1 Hacer
		Imprimir vec[i], ", ", Sin Saltar;
	FinPara
	
FinFuncion
	